#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

/* Error handling function */
void error(char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
    int sockfd;
    int portno;
    int n;
    struct sockaddr_in serv_addr;
    struct hostent *server;
    char buffer[256];

    /* Check command line arguments */
    if (argc < 3) {
        fprintf(stderr, "Usage: %s hostname port\n", argv[0]);
        exit(1);
    }

    /* Get port number */
    portno = atoi(argv[2]);

    /* Create socket */
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) {
        error("Error: Unable to open socket");
    }

    /* Get server information */
    server = gethostbyname(argv[1]);
    if (server == NULL) {
        fprintf(stderr, "Error: Unable to find host %s\n", argv[1]);
        exit(1);
    }

    /* Initialize server address structure */
    bzero((char *)&serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr,
          (char *)&serv_addr.sin_addr.s_addr,
          server->h_length);
    serv_addr.sin_port = htons(portno);

    /* Connect to server */
    if (connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        error("Error: Unable to connect to server");
    }

    /* Get user input and send */
    printf("Please enter the message: ");
    bzero(buffer, 256);
    fgets(buffer, 255, stdin);
    
    n = write(sockfd, buffer, strlen(buffer));
    if (n < 0) {
        error("Error: Unable to write to socket");
    }

    /* Receive server response */
    bzero(buffer, 256);
    n = read(sockfd, buffer, 255);
    if (n < 0) {
        error("Error: Unable to read from socket");
    }

    printf("Server response: %s\n", buffer);
    close(sockfd);

    return 0;
}
