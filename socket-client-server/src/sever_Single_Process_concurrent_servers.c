#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/select.h>   // select / fd_set
#include <errno.h>

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

// Handle a single client connection once
void handle_client_once(int clientfd)
{
    char buffer[256];
    int n;

    bzero(buffer, 256);
    n = read(clientfd, buffer, 255);

    if (n < 0) {
        perror("ERROR reading from socket");
        close(clientfd);
        return;
    }
    if (n == 0) {
        // Client closed connection
        close(clientfd);
        return;
    }
    printf("Here is the message: %s\n", buffer);

    n = write(clientfd, "I got your message", 18);
    if (n < 0) {
        perror("ERROR writing to socket");
    }

    close(clientfd);
}

int main(int argc, char *argv[])
{
    int sockfd, portno;
    struct sockaddr_in serv_addr;

    if (argc < 2) {
        fprintf(stderr, "ERROR, no port provided\n");
        exit(1);
    }

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0)
        error("ERROR opening socket");

    // use to reuse the address immediately after program exit
    int opt = 1;
    if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)) < 0)
        error("ERROR on setsockopt");

    bzero((char *)&serv_addr, sizeof(serv_addr));
    portno = atoi(argv[1]);

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(portno);

    if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
        error("ERROR on binding");

    listen(sockfd, 5);

    // Using select to handle multiple clients concurrently in a single process
    fd_set master, readfds;
    FD_ZERO(&master);
    FD_SET(sockfd, &master);

    int fdmax = sockfd; // maximum file descriptor number

    while (1) {
        readfds = master; // select will modify readfds

        int ready = select(fdmax + 1, &readfds, NULL, NULL, NULL);
        if (ready < 0) {
            if (errno == EINTR) continue; // interrupted by signal, retry
            error("ERROR on select");
        }

        // check all fds for activity
        for (int fd = 0; fd <= fdmax; fd++) {
            if (!FD_ISSET(fd, &readfds)) continue;

            if (fd == sockfd) {
                // new incoming connection
                struct sockaddr_in cli_addr;
                socklen_t clilen = sizeof(cli_addr);
                int newfd = accept(sockfd, (struct sockaddr *)&cli_addr, &clilen);
                if (newfd < 0) {
                    perror("ERROR on accept");
                    continue;
                }

                FD_SET(newfd, &master);
                if (newfd > fdmax) fdmax = newfd;

            } else {
                // some standard client socket is readable
                handle_client_once(fd);

                // remove form the master set, as we closed it in handle_client_once
                FD_CLR(fd, &master);

                // if it was the max fd, update fdmax
                if (fd == fdmax) {
                    while (fdmax >= 0 && !FD_ISSET(fdmax, &master)) {
                        fdmax--;
                    }
                }
            }
        }
    }

    close(sockfd);
    return 0;
}
