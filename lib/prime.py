class prime:

    def getListBelow(self, ceiling):
        list = []
        for i in range(2, ceiling):
            if self.__isPrime(i):
                list.append(i)
        return list

    def __isPrime(self, number):
        divisors = 0;
        for i in range(2, number):
            if number % i == 0:
                divisors += 1
            if divisors > 0:
                return False
        return divisors == 0