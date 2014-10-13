import math

class prime:

    def getListBelow(self, ceiling):
        primeList = []
        if ceiling > 2:
            primeList.append(2)

        i = 3
        while i < ceiling:
            if self.isPrime(i):
                primeList.append(i)
            i += 2
        return primeList

    def isPrime(self, number):
        if number <= 1:
            return False
        elif number == 2:
            return True
        else:
            if number % 2 == 0:
                return False 

            upperLimit = int(math.ceil(math.sqrt(number))) + 1
            i = 3
            while i < upperLimit:
                if number % i == 0:
                    return False
                i += 2
        return True

    def getPrimeFactors(self, number):
        factors = []
        if number < 2:
            return factors

        divider = 2
        while number > 1:
            while number % divider == 0:
                factors.append(divider)
                number /= divider
            divider = divider + 1

        return factors