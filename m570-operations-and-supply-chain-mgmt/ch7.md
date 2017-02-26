# Chapter 7 Notes #
From *Matching Supply with Demand* by Cachon and Terwiesch

## Introduction ##
- Ideally, a cycle time of x minutes would imply that every x minutes each
part of the production process receives a flow unit, and outputs a flow unit
x minutes later.  
- in practice, processes are usually not that smooth or continuous due to setups
and variability in either processing time or quality level
- setup times affect inventory, flow rate, and flow time in a process

## 7.1 The Impact of Setups on Capacity ##
**production cycle** = repeated set of steps involving setup times and
production runs

**batch process** = production process in which parts are made in batches

**batch** = a collection of flow units

- It is assumed for sake of analysis that batches are completed in succession,
where a new batch is processed once the previous is completed, and all batches
contain the same number and type of flow units
- frequent setups lead to a reduction in process capacity
- increasing batch size can increase process capacity by reducing the total
number (and frequency) of required setups

capacity given batch size = batch size / (setup time + batch size * processing time)

**batch size** = number of flow units produced in one cycle

- the setup time includes all setups required for production of the batch, and
can include any other non-producing time (mandatory worker breaks or scheduled
  maintenance time, for example)
- processing time = all production time required to produce one complete flow
unit of output
- No matter how large the batch size, it is not possible to produce more than
one unit for every p (processing time) units of time, so 1/p can represent the
maximum capacity the process can achieve

## 7.2 Interaction between Batching & Inventory ##
- since large batch sizes increase capacity, it might be tempting to always
pick the largest possible batch size to maximize capacity for the process
  - This leads to higher levels of inventory, within the process or at the
  point of finished goods, so there's a tradeoff
  - from Little's Law, higher inventory levels also lead to longer flow times
    - increased wait times lead to increase flow times
  - this is why batch-flow operations are not very fast for responding to
  customer orders
- producing in large batches creates a mismatch between the rate of supply
and the rate of demand
- may need to insert idle time into processes where one machine produces faster
than machines that follow it

- the ideal case:
  - Toyota Production Systems (TPS) heijunka / mixed-model production
  - alternate between producing two types of products, each with a batch size
  of one
    - synchronizes demand flow and production flow and eliminates inventory

## 7.3 Choosing a Batch Size in the Presence of Setup Times ##
- must balance capacity and inventory to choose batch sizes
- At the bottleneck step, capacity is very valuable as long as the process
is capacity-constrained because it constrains the flow rate of the entire
process
- capacity at a non-bottleneck step does not constrain the current flow rate

Implications:
- if setup occurs at the bottleneck step and the process is capacity-constrained
the batch size should be increased as it will lead to higher process capacity
and therefore higher flow rate
- if setup occurs at a non-bottleneck step or if the process is
demand-constrained, the batch size should be decreased in order to decrease
inventory and flow time

**Capacity (B) = Batch Size / (Setup Time + Batch Size * Processing Time)**

- the bottleneck step may be shifted if batch sizes change
- optimal batch size may be found by equating the capacity of the step with
a setup time with the capacity of the step from the remaining process that
has the lowest capacity

Equation for finding recommended batch size:
**B = (Flow rate * Setup Time) / (1 - Flow Rate * Processing Time)**

## 7.4 Setup Times and Product Variety ##
- setup times are often incurred when product type is switched
- analysis can be performed by adding all of the setup times and summing the
total demand for different products, while keeping the production in proportion
to the demand for each product
- additional inventory may occur when product mix is changed due to the presence
of setup times in the process (more setups are performed as new products are
  added)
  - capacity of the cycle is reduced because of the setup times
  - in order to increase capacity back to desired flow rate, larger batches
  are required which leads to more inventory
- setup times and increased product variety do not work well together
  - offer limited variety (think Model-T only coming in black)
  - reduce or eliminate setup times

## 7.5 Setup Time Reduction ##
- even optimizing batch sizing, setups disrupt smooth process flow
- Single Minute Exchange of Die (SMED) method:
  - any setup taking longer than 10 minutes (not literally) is too long
  - steps:
    1. Analyze all tasks that are part of the setup time
    2. Break tasks into Internal setup and External setup tasks
      - Internal = tasks that can only be executed while machine is stopped
      - External = tasks that can be done while machine is still operating,
      so they can be done before the changeover actually occurs
- companies tend to be biased toward using internal setups, but that internal
setups can often be changed into external setups without significant investment
- SMED should only be applied to bottleneck steps in order to obtain ROI from
the process improvement
- non-bottleneck setups are entirely free, so no need to optimize them
