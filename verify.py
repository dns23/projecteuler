from problems.number1.solver import solver as solver1
from problems.number2.solver import solver as solver2
from problems.number3.solver import solver as solver3

assert 233168 == solver1().brute() == solver1().smart()
assert 4613732 == solver2().brute() == solver2().smart()
assert 6857 == solver3().brute() == solver3().smart()