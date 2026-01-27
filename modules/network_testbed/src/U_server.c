#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>

#define SOCK_PATH "/tmp/ee533_unix_sock"

void error(const char *msg) {
    perror(msg);
    exit(1);
}

int main() {
    int sockfd, newsockfd;
    struct sockaddr_un addr;
    socklen_t addrlen;

    sockfd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (sockfd < 0) error("socket");

    // id the socket file already exists, remove it
    unlink(SOCK_PATH);

    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, SOCK_PATH, sizeof(addr.sun_path) - 1);

    addrlen = sizeof(addr);

    if (bind(sockfd, (struct sockaddr *)&addr, addrlen) < 0)
        error("bind");

    if (listen(sockfd, 5) < 0)
        error("listen");

    printf("Unix domain server listening on %s\n", SOCK_PATH);

    while (1) {
        newsockfd = accept(sockfd, NULL, NULL);
        if (newsockfd < 0) {
            perror("accept");
            continue;
        }

        char buf[256];
        int n = read(newsockfd, buf, 255);
        if (n > 0) {
            buf[n] = '\0';
            printf("Got: %s\n", buf);
            write(newsockfd, "I got your message", 18);
        }

        close(newsockfd);
    }

    close(sockfd);
    unlink(SOCK_PATH);
    return 0;
}
