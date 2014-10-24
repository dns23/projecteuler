#include <fibonacci.h>

void FIB_PopulateSeries(uint64_t *series, const uint32_t terms)
{
   uint64_t n1 = 1;
   uint64_t n2 = 0;
   uint32_t term = 0;

   if (terms > 1)
   {
      series[term++] = n2;
   }
   if (terms > 2)
   {
      series[term++] = n1;
   }
   while (term < terms)
   {
      uint64_t tmp = n1 + n2;
      series[term++] = tmp;
      n2 = n1;
      n1 = tmp;
   }
}

void FIB_PopulateEvenSeries(uint64_t *series, const uint32_t terms)
{
   uint64_t n1 = 2;
   uint64_t n2 = 0;
   uint32_t term = 0;

   if (terms > 1)
   {
      series[term++] = n2;
   }
   if (terms > 2)
   {
      series[term++] = n1;
   }
   while (term < terms)
   {
      uint64_t tmp = (4 * n1) + n2;
      series[term++] = tmp;
      n2 = n1;
      n1 = tmp;
   }
}
