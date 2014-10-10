class solver:

    def brute(self):
        sum = 0
        n2 = 0
        n1 = 1
        while True:
            tmp = n1 + n2
            if (tmp >= 4e6):
                break

            if (tmp % 2 == 0):
                sum += tmp

            n2 = n1
            n1 = tmp
        return sum

    def smart(self):
        return self.brute()