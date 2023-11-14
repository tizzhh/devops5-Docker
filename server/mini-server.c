#include <fcgi_stdio.h>

int main() {
    while (FCGI_Accept() >= 0) {
        printf("Content-Type: text/html\n\n");
        printf("hello world");
    }

    return 0;
}
