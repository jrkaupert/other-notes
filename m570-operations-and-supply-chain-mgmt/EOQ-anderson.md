# Notes from Anderson Excerpt on EOQ #

**inventory** = idle goods/materials held by firm for later use.  
- Serves as a buffer against uncertain usage by organization or customer
demand.
- While important, maintaining inventory has financial cost and can be $M in
large organizations

Two key questions involving inventory:
1. How much should be ordered when inventory is replenished?
2. When should inventory be replenished?

**Economic order quantity (EOQ)** = model used when demand for an item is
nearly constant and when whole amount of inventory arrives at same time
- The constant demand rate assumption means the same number of units is taken
from inventory during every time period

Deciding how much to order involves selecting an order quantity that balances:
1. keeping inventories small and ordering more often => high ordering costs
2. keeping inventories large and ordering less often => high inventory holding
costs

Total cost = holding cost + ordering cost

**Holding Costs** = costs of maintaining or carrying a specified level of
inventory (dependent on size of inventory)
- financing the inventory investment (interest charge for borrowing money or
  opportunity cost of not being able to invest in other stuff, ie: cost of
  capital)
- other costs such as insurance, taxes, breakage/pilferage, warehouse overhead

**Ordering Cost** = cost of processing the order including payment, postage,
telephone, transportation, invoice verification, receiving, etc...assumed
fixed regardless of order quantity

In order to use EOQ model, must know holding cost, ordering cost, and demand

## How much to Order ##
The how-much-to-order decision involves finding an order quantity Q that
minimizes the sum of holding and ordering costs

Can compute holding cost via average inventory (multiply average inventory
  by cost of holding one unit in inventory for a period)

Most inventory models are done on an annual cost basis

EOQ formula:

Q* = sqrt((2*D*Co)/Ch)

where

Ch = Holding cost of one unit for a year
Co = Cost of placing one order

## When to Order ##
The when-to-order decision involves inventory position, related to the
reorder point

**Inventory Position** = amount of inventory on hand plus amount of
inventory on order

**Reorder Point** = the inventory position at which a new order should be
placed

**Lead Time** = delivery period

**Lead-Time Demand** = amount of demand anticipated during the lead time
period

When constant demand rate assumption holds and lead time is fixed, the
reorder point is the same as the lead-time demand

**Cycle Time** = period between orders

Cycle time equation:

T = (working days in a year) \* Q\* / D = 250Q*/D

In general, EOQ model is insensitive to small variations/errors in cost
estimates.  If ordering/holding costs are reasonably accurate, the EOQ
model is a good approximation of true minimum cost order quantity

EOQ Model Assumptions:
1. Demand is deterministic and occurs at constant rate
2. Order quantity is same for each order.  Inventory increases by this
amount every time an order is received
3. Cost per order is constant and independent of order quantity
4. Purchase cost per unit is constant and does not vary with order quantity
5. Inventory holding cost per unit time period is constant.  Total inventory
holding cost depends on unit cost and size of inventory
6. Shortages (stockouts, backorders) not permitted
7. Lead time is constant
8. Inventory position is continuously reviewed so that order is placed as
soon as inventory position reaches reorder point

Other inventory models exist if these assumptions are poor.
