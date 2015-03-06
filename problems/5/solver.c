#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <pe_solver_instance.h>

uint32_t solver(void)
{
    const uint32_t step = 20;
    uint32_t candidate = step;

    for (;;) {
       uint32_t divisors = 0;
       bool evenlyDivisible = true;
       for (divisors = 1; divisors <= step; divisors++) {
          if (candidate % divisors > 0) {
             evenlyDivisible = false;
             break;
          }
       }
       if (evenlyDivisible) {
          break;
       }
       candidate += step;
    }
    return candidate;
}

static PESolverObject problemSolver = {(uint32_t) 5, solver};
PESolverObject *const peSolverInstance = &problemSolver;
