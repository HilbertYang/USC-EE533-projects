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

int main(int argc, char *argv[]) {
    int sockfd;
    struct sockaddr_un addr;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s \"message\"\n", argv[0]);
        exit(1);
    }

    sockfd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (sockfd < 0) error("socket");

    memset(&addr, 0, sizeof(addr));
    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, SOCK_PATH, sizeof(addr.sun_path) - 1);

    if (connect(sockfd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
        error("connect");

    write(sockfd, argv[1], strlen(argv[1]));

    char buf[256];
    int n = read(sockfd, buf, 255);
    if (n < 0) error("read");
    buf[n] = '\0';

    printf("Reply: %s\n", buf);

    close(sockfd);
    return 0;
}
