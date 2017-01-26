# Lecture 3 Notes #

Problems 1 and 3 require use of EOQ Excel Template in Excel Files folder on
Blackboard.

Problem 2 will also use the EOQ template for parts a-g.  Part h assumes
shortages / backordering. Portion h will use EOQ with shortages template.
There is additional flexibility (dv) for management because shortage is
under our control. More dvs is always *good*, see additional lecture recording
for help on this.

Closed book, closed notes final exam in class, with crib sheets. No midterm.

## Moon-Chem Problem ##
Two tiered supply chain, with 20 customers in one tier

Annual demand given by monthly demand times months for each customer.
small customer = 12,000 units / yr
medium customer = 60,000 units /yr
large customer = 144,000 units / yr

This is a functional product (chemicals), long life-cycle.

Current strategy: 1 truck per customer site each time the customer needs
replenishment.  1 trip per customer. 40,000 lbs per truck in one shipment.

T = Cycle-time = 1 period of inventory before replenishment

Typically assume Lead Time < T

Inventory being carried in one cycle = (Q * T)/2 = area underneath curve =
average inventory

\# cycles per year = n*(Q*T)/2, where n is \# orders per year, and n=1/T =
total inventory in a year = Q/2 = cycle inventory

holding cost implies an alternate investment opportunity

h = unit inventory holding cost
c = unit cost
i = interest rate / cost of capital
k = actual storage cost (not always present)

h = c * i + k

Total Annual Holding Cost (TAHC) = h * Q/2

S = fixed order cost
s = dropoff cost, other costs (not always present)

Total Annual Ordering Cost (TAOC) = (S + s) * n = (S + s) * D/Q
