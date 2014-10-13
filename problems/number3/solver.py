from lib.prime import prime

class solver:

    def brute(self):
        primeFactors = prime().getPrimeFactors(600851475143)
        return max(primeFactors)

    def smart(self):
        return self.brute()
