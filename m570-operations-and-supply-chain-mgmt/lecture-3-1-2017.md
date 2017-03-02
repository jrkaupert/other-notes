# Notes from 3-1-2017 Lecture #

- Will start ch 13 after spring break

## Basic Newsvendor Problem ##
- only one opportunity to order, perishable stock
- have to set initial supply before demand is known
- costs associated with underestimating or overestimating demand
  - Q > Dactual (overstocking/overage: co=unit overage risk/cost)
    - Q=12 but D=11 so one leftover unit
  - Q < Dactual (understocking/underage: cu=unit underage risk/cost)
    - Q=12 but D=13 so short by one unit
- in extended version of problem, can go back and order more, but it will cost
more later than earlier so overall profit will still decrease

- co = c - s (cost minus shortage cost)
- cu = r - c + p (revenue minus cost plus penalty; you miss out on the margin
  since you didn't make the sale in the first place)

  if cu > co, Q* > E(D)
  if cu < co, Q* < E(D)
  if cu = co, Q* = E(D)

  Want to find Q* to maximize E(profit), or minimize Q<D and Q>D probabilities

  c* = cu / (cu + co)

FD(k) = P(D<=k)
  c* ~ FD(Q*) for discrete distributions
  c* = FD(Q*) for continuous distributions (use NORM.INV to get Q*)
