# Chapter 2 Textbook Notes #
From *Matching Supply with Demand* by Cachon and Terwiesch

## Introduction ##
Key questions for operations management:
- Why are business processes not instantaneous?
- What constrains processes from creating more supply?

**Firms must do more than create amazing stuff and give great service, they
must also create and iterate on the processes that allow products and services
to be provided**

## 2.1 Presbyterian Hospital in Philadelphia ##
**Gantt Diagram** = graphical display of process steps
- allows you to see process steps and duration (activity times/processing times)
- shows dependence between activities in the process

**critical path** = all activities that, if delayed, lead to overall delay in
the process/project completion

**Waiting is a symptom of supply-demand mismatch.**

Waiting times arise when there is competition for limited resources.

## 2.2 Three Measures of Process Performance ##
A **process** may be considered a "black box" that consumes **resources** to
transform **inputs** into **outputs**.

**flow unit** = unit of analysis when examining process flows.  Usually
determined by type of product/service the supply process cares about.  These
flow through the process, starting as an input, and leaving as an output

**inventory** = number of flow units contained within the process.  May be
called **work in process** or **WIP** in a production setting.

**flow time** = time it takes a flow unit to get through the process.  Factors
in wait times due to flow units competing for resources.  Very important in
service organizations or other scenarios sensitive to delays (make-to-order
production)

**flow rate** or **throughput rate** = rate at which process delivers output

**capacity** = maximum rate process can generate supply

**Increasing maximum flow rate (capacity) avoids situations where there
is insufficient supply to match demand.**

**Higher flow rate translates directly into more revenues if process is
currently capacity constrained**

**Capacity constrained** = sufficient demand exists that you could sell any
additional output you make

Shorter flow times typically help demand-supply mismatches, and often result in
higher unit sales and/or higher prices.

Lower inventory => lower working capital requirements and other quality
advantages. Provides reduction in flow time

Higher inventory => longer flow times

**Inventory is the most obvious indication of mismatched supply and demand**

## 2.3 Little's Law ##
To accountants, inventory is an asset.  For operations, it's more of a liability
though not in an accounting sense.

**Little's Law**: *Average Inventory = Average Flow Rate x Average flow time*

## 2.4 Inventory Turns and Inventory Costs ##
Measuring inventory in a common monetary unit allows an aggregate understanding
across types of products

Little's law is what allows us to compute inventory turnover rate as
Inventory / COGS (days of supply)

*Inventory Turns = 1 / Flow Time*

Inventory holding costs are much higher than the direct costs of keeping
them on the shelves:
- inventory can become obsolete over time
- perishability
- theft / shrink
- insurance, security, real estate costs
- Other costs associated with waiting times and quality

*Per-unit inventory costs = Annual Inventory Costs / Annual Inventory Turns*

## 2.5 Five Reasons to Hold Inventory ##
1. Time a flow unit spends in the process (pipeline inventory)
- only way to reduce is to reduce flow time
2. Seasonal demand
- necessary to prepare for spikes in demand when capacity is rigid but demand
is variable seasonally
- seasonal inventory depends on temporary imbalances in supply and demand
due to variable supply or variable demand
3. Economies of Scale (cycle inventory)
- many times it is economical to process several flow units at the same time
to achieve economies of scale
- cycle inventory is created due to cost motivations rather than variability in
supply and demand (think loading trucks fully and then not being able to sell
  everything immediately but overall being cheaper than sending partial trucks
  more often)
4. Separation of steps in a process (decoupling inventory/buffers)
- inventory between process steps provides a buffer so that management can
operate steps independently
- buffers absorb variations in flow rates by acting as supply for downstream
steps
5. Stochastic demand (safety inventory)
- actual demand will vary unpredictably (seasonal demand is predictable in
  nature)
- safety inventory allows hedging against demand uncertainty

## 2.6 The Product-Process Matrix ##
**product-process matrix**: Over its lifecycle, a product is first produced
in a job shop process.  As volume increases, the process of production shifts
from the upper left of the matrix to the lower right.
- Job Shop -> Batch Process -> Worker-Paced Line -> Machine-Paced Line ->
Continuous Process
- It is not economical to produce high volumes in a job shop, nor to produce
low volumes on an assembly line
- By examining the product-process matrix, it is possible to understand common
problems faced by similar industries and identify common solutions to these
