#include <stdio.h>
#include "ariphm_lib.h"

int main() {
    printf("add %d\n", ariphm_add(8, 2));
    printf("div %d\n", ariphm_div(8, 2));
    printf("mul %d\n", ariphm_mul(8, 2));
    printf("sub %d\n", ariphm_sub(8, 2));
    return 0;
}