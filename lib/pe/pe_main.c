#include "pe_solver_instance.h"
#include <stdio.h>

int main(void) {
    uint32_t i;

    printf("Problem:\t%u\n", peSolverInstance->number);
    printf("Result:\t%u\n", peSolverInstance->solver());

    return 0;
}
