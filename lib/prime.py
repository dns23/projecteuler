import math

class prime:

    def getListBelow(self, ceiling):
        primeList = []
        for i in range(2, ceiling):
            if self.__isPrime(i):
                primeList.append(i)
        return primeList

    def __isPrime(self, number):
        if number <= 1:
            return False
        elif number == 2:
            return True
        else:
            if number % 2 == 0:
                return False 

            upperLimit = int(math.ceil(math.sqrt(number))) + 1
            for i in range(3, upperLimit, 2):
                if number % i == 0:
                    return False
        return True