# Notes from 2/8/2017 Class #

Without variability in demand, we focus on Q, order quantity, required to
minimize cost.

As variability in demand occurs, we also start to care about R, the reorder
point, that tells when to order more.

## When DL is stochastic, but L is not ##
D becomes a random variable that describes demand, including uncertainty. It
can be characterized by a mean and a standard deviation.

99.7% of actual demand falls within 3 std. deviations of the mean.

DL = Demand over lead-time.  Also a random variable.

L = Lead time (needs to be expressed in same units as demand over lead-time)

- E(DL) = E(D)\*L
- sigma(DL) = sqrt(L)\*sigma(D)

Safety stock = inventory kept on purpose to minimize possibility of shortages
during lead-time.  Hedging against uncertainty of demand. Is a part of R
(reorder point)

- Q -> How many?
- R -> When?

R = E(DL) + k*sigma(DL)

- E(DL) is the average
- k = safety factor (k >= 0)
- k*sigma(DL) is the variability/uncertainty (safety stock)

Need to minimize expected Total Annual Cost, subject to

min(TAC), s.t. (Q, k)

safety factor is the changing cell, not R.  R can be computed from k.

from in-class example

| k              | SS             | R              | P(DL > R)      |
| :------------- | :------------- | :------------- | :------------- |
| 1              | 10             | 33             | 0.16           |
| 2              | 20             | 43             | 0.02           |

SS=k*sigma(DL)

Stockout/shortage occurs when demand over lead-time is greater than R.

Chance of no shortage = customer service level = P(DL <= R)

P(DL<=R) + P(DL > R) = 1

P(z<=k) + P(z>k) = 1

z is standard normal random variable, Z~N(0,1)

Can use Excel's NORMDIST to calculate probability of stock-out based on R

Can use Excel's NORMSDIST to calculate based on k

## When both DL and L are stochastic ##

E(DL) = E(D)\*E(L)

SS = k*sqrt(sigma(L)^2 \* E(D)^2 + sigma(D)^2 \* E(L))

R = E(DL) + SS

The given Excel worksheet has a constant L, but our
assignment has variability in lead time, so we need to
use the formula above.

**Annual Setup Cost:**

S * (E(D)/Q), where E(D) is expected annual demand

**Annual Inventory Holding Cost:**

h * (Q/2 + SS)

SS=0 when there's no uncertainty!

**Annual Shortage (Stock-out)**

P1 * P(z>k) * (E(D)/Q)
