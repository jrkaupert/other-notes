# Chapter 6 Notes #
From *Matching Supply with Demand* by Cachon and Terwiesch

## Introduction ##
- most organizations focus on creating economic value
- people investing in the firm want to see a return greater than if they
invested elsewhere
- economic value is created when return on invested capital (ROIC) exceeds
the cost of capital (Weighted Average Cost of Capital [WACC] often used)

Basic value equation:

```
Economic value created = invested capital * (ROIC - WACC)
```

- cost of capital cannot be changed easily in the short run, so
analysis focuses on affecting the return on invested capital

Key concepts in the chapter:
1. ROIC Tree = KPI tree  
2. how to value operational improvement opportunities (predicting
  by how much ROIC increases if the process is improved via gains
  in operational measures defined elsewhere in the book)
3. examples of KPI trees and how financial statements can be used
to assess operations

## 6.1 Paul Downs Cabinetmakers ##
- Paul Downs makes high-end residential furniture
  - basic costs:
    - equipment used in production = $450,000 value
    - Annual depreciation = $80,000/yr
    - rents for showroom + factory = $150,000 / yr
    - marketing costs = $100,000/yr
    - management costs = $180,000/yr
    - finishing worker = $60,000/yr
  - Inventory:
    - $20,000 raw materials inventory
    - $50,000 work-in-process inventory
  - other info
    - 12 Cabinetmakers
    - 220 days per year of work, 8 hrs/day on average, @ $20/hr
    - ~40hrs to complete 1 piece of furniture
    - ~15% time spent on building fixtures, setting up machines
    - ~10% time spent waiting for a resource to become available
    - typical piece of furniture requires:
      - 30kg wood
      - 25% more wood for scrap losses in cutting steps
      - $10/kg for wood
  - customers pay about $3000 for a dining table, 50% down payment
    - ~3 month lead time
    - facility currently fully utilized, more demand than can be
    processed by the factory

## 6.2 Building an ROIC Tree ##
- building an ROIC tree involves cascading a high-level financial
measure into the key operational components that drive it
  - this shows what management can do to improve ROIC

Equations for ROIC:
```
ROIC = Return / Invested Capital = Return / Revenue * Revenue / Invested Capital

Margin = Return / Revenue

Capital Turns = Revenue / Invested Capital

ROIC = Margin * Capital Turns (DuPont Model)
```

- different companies achieve ROIC in different ways
  - asset intensive industrics have low capital turns but high margins
  - other industries require little capital, but tend to be easier for new
  competitors to enter which leads to small margins

From Accounting:
```
Return = Revenue - Fixed Costs - Production Volume * Variable Costs
```

Some math:
```
Return / Revenue = Revenue / Revenue - Fixed Costs / Revenue - (Flow Rate * Variable Costs) / Revenue

Because revenue = flow rate * price:

                 = 1 - Fixed Costs / (Flow Rate * Price) - (Flow Rate * Variable Costs) / (Flow Rate * Price)
                 = 1 - Fixed Costs / (Flow Rate * Price) - Variable Costs / Price

And:
Revenue / Invested Capital = Flow Rate * Price / Invested Capital
```

The overall ROIC equation:
```
ROIC = [1 - Fixed Costs / (Flow Rate * Price) - Variable Costs / Price] * (Flow Rate * Price) / Invested Capital
```

Levers Available to Us for Changing ROIC
- **Price:** We assume price is already established, so we do not choose to
analyze it here, but this is an available option to change to affect
ROIC

- **Variable Costs:** In this example, VC are driven mostly by wood
consumption.  Labor costs could be variable, but in this example
are really more of a fixed cost due to the fixed number of workers
and fixed hourly wages

Variable costs for a piece of furniture:
```
Variable cost = price of wood * wood per table
              = price of wood * (wood in final table + cutting loss)
```

- **Flow Rate:**
```
flow rate = Min{Demand, Process capacity}
```

Number of units of furniture that can be produced in a year depends on:
```
number of available worker hours = number of cabinetworkers * hours worked by each cabinetworker

time needed for a piece of furniture = time spent waiting for a machine + time to set up machine + time spent working
```

- **Fixed Costs:** include marketing, overhead labor (inspection,
  administration), rent, depreciation, and cost of workforce

- Depreciation should be handled as the loss of value of a machine,
rather than how it is calculated for tax purposes

The asset-turn portion of the tree is handled similarly:
- Capital is invested in PP&E and in 3 forms of working capital:
  - Inventory (Raw materials + WIP)
  - Prepayments to suppliers (money we've paid but for which
  we have not yet received materials)
    - Flow Rate * Material Costs / Time of Prepayment
  - Money we are waiting to receive from customers for products
  already shipped to them
    - Revenues * % down payment / Time of Down Payment

## 6.3 Valuing Operational Improvements ##
- primary benefit of calculations in previous sections are that
each method of possibly improving operations may have a value assigned to it
- possible options:
  - cut wages
  - change design so work required to make piece of furniture is reduced
  - reduce time works wait for a machine
  - reduce setup times
  - change payment terms with suppliers
  - etc...
- spreadsheets are useful for performing analysis to decide
which levers are best to pull to improve operations to best improve
ROIC
- sometimes intuition is badly wrong (changing setup times by 5%
  here leads to an 18.8% improvement in ROIC)
  - this ends up being a key driver of financial performance!
  - this is an **operational value driver**
  - often, even small increases in flow rate adds substantial
  profit once fixed costs are covered (true in all high fixed-cost
    industries such as hotels, airlines, and other services)

## 6.4 Analyzing Operations Based on Financial Data ##
- an alternative way to examine a business is to use its financial
statements to analyze its operations
- an ROIC table can be built similar to the previous sections
- firms with superior financial performance over time should be
used as a basis for developing a model
- some measures will need to be translated if different companies
vary on how they run their operations to achieve a common way to
analyze
- this approach is much more top-down

## 6.5 Summary ##
- Operations and financial performance can be studied at the micro level, or by
using financial statements.
- The key drivers of financial performance are operational variables
- Since value creation happens via operations, increasing the economic value
of a company requires analysis of its operations
