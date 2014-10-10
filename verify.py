from problems.number1.solver import solver as solver1
from problems.number2.solver import solver as solver2

assert 233168 == solver1().brute() == solver1().smart()
assert 4613732 == solver2().brute() == solver2().smart()