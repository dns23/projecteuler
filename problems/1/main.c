#include <stdio.h>
#include <stdint.h>

int main() {
    const uint32_t upper_limit=1000;
    uint32_t sum = 0;
    uint32_t i = 0;

    for (i = 3; i < upper_limit; i+=3) {
        sum += i;
    }
    for (i = 5; i < upper_limit && i % 3 > 0; i+=5) {
        sum += i;
    }
    printf("sum %d\n", sum);
}
