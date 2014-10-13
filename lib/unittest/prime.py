from lib.prime import prime
import unittest

class TestPrime(unittest.TestCase):

    def setUp(self):
        self.uut = prime()

    def test_getListBelowShouldHandleNegativeNumbers(self):
        self.assertEqual(self.uut.getListBelow(-1), [])

    def test_getListBelowShouldHandleZero(self):
        self.assertEqual(self.uut.getListBelow(0), [])

    def test_getListBelow3ShouldNotReturnOne(self):
        self.assertEqual(self.uut.getListBelow(1), [])
        self.assertEqual(self.uut.getListBelow(2), [])
        self.assertEqual(self.uut.getListBelow(3), [2])

    def test_getListBelow23ShouldReturnTheFirst8Primes(self):
        self.assertEqual(self.uut.getListBelow(23), [2, 3, 5, 7, 11, 13, 17, 19])

    def test_getListBelow24ShouldReturnTheFirst9Primes(self):
        self.assertEqual(self.uut.getListBelow(24), [2, 3, 5, 7, 11, 13, 17, 19, 23])

    def test_getPrimeFactorsCanHandleNonValidInput(self):
        self.assertEqual(self.uut.getPrimeFactors(-1), [])
        self.assertEqual(self.uut.getPrimeFactors(0), [])
        self.assertEqual(self.uut.getPrimeFactors(1), [])

    def test_getPrimeFactorsCanHandlePrimeNumbersAsInput(self):
        self.assertEqual(self.uut.getPrimeFactors(2), [2])
        self.assertEqual(self.uut.getPrimeFactors(17), [17])

    def test_getPrimeFactorsCanHandlePositiveNaturalNumbersAsInput(self):
        self.assertEqual(self.uut.getPrimeFactors(12), [2, 2, 3])
        self.assertEqual(self.uut.getPrimeFactors(8), [2, 2, 2])
        self.assertEqual(self.uut.getPrimeFactors(13195), [5, 7, 13, 29])