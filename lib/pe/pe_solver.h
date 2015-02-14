#ifndef PE_SOLVER_H_
#define PE_SOLVER_H_

#include <stdint.h>

typedef struct pe_solver_t
{
    uint32_t number;
    uint32_t (*solver)(void);
} PESolverObject;

#endif /* PE_SOLVER_H_ */
