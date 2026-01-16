#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

void error(char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
    int sockfd, portno, n;
    char buffer[256];

    struct sockaddr_in serv_addr, from_addr;
    socklen_t fromlen;

    struct hostent *server;

    if (argc < 3) {
        fprintf(stderr, "usage %s hostname port\n", argv[0]);
        exit(1);
    }

    portno = atoi(argv[2]);

    // UDP socket
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0)
        error("ERROR opening socket");

    // Get host ip from server(same as TCP )
    server = gethostbyname(argv[1]);
    if (server == NULL) {
        fprintf(stderr, "ERROR, no such host\n");
        exit(1);
    }

    bzero((char *)&serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr,
          (char *)&serv_addr.sin_addr.s_addr,
          server->h_length);
    serv_addr.sin_port = htons(portno);

    // get message
    printf("Please enter the message: ");
    bzero(buffer, 256);
    fgets(buffer, 255, stdin);

    // UDP send：sendto(instead of connect)
    n = sendto(sockfd, buffer, strlen(buffer), 0,
               (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    if (n < 0)
        error("ERROR on sendto");

    // UDP reply
    bzero(buffer, 256);
    fromlen = sizeof(from_addr);
    n = recvfrom(sockfd, buffer, 255, 0,
                 (struct sockaddr *)&from_addr, &fromlen);
    if (n < 0)
        error("ERROR on recvfrom");

    printf("%s\n", buffer);

    close(sockfd);
    return 0;
}
