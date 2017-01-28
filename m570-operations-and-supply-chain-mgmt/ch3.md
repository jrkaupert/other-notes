# Chapter 3 Textbook Notes #
From *Matching Supply with Demand* by Cachon and Terwiesch

## Introduction ##
Matching supply with demand requires understanding the maximum amount a process
can produce in a given unit of time (*process capacity*)

Process analysis can occur at a managerial level rather than engineering level
to provide insights without diving too deep.

## 3.1 How to Draw a Process Flow Diagram ##
**process flow diagram** = graphical representation of the process

To draw process flow diagrams, must focus on the parts of the process we care
about (those dealing with our flow unit).  

**Process boundaries** = ways to restrict analysis of a process

- Boxes represent process activities where value is added to the flow unit
- Triangles represent waitings areas / buffers for holding inventory (no value
  added).  Flow units are not required to spend time in these buffers, but
  there may be reasons for them to despite no value add
- Arrows between boxes and triangles indicate the route the flow unit takes
  through the process

Steps may be omitted from a process diagram if it is clear that they will
never be the constraint or are otherwise trivial

## 3.2 Bottleneck, Process Capacity, Flow Rate ##
**Capacity** = maximum amount the resource can produce in a given time unit
- Theoretical limit, not actual amount produced

**bottleneck** = resource with the smallest capacity

*Process Capacity = Min{Capacity 1, ..., Capacity n}*,
for a process of *n* resources

*Flow Rate = Min{Available input, Demand, Process Capacity}*

**Demand constrained** = If demand is lower than supply, process produces at
rate of demand regardless of process capacity

**Supply constrained** = If demand exceeds supply, depending on input or
capacity as the supply limitation

## 3.3 How Long to Produce Certain Amount of Supply? ##
*Time to fulfill X units = X / flow rate*

## 3.4 Process Utilization & Capacity Utilization ##
**Utilization** = Flow rate / Capacity

Reasons why process might not produce at 100% utilization:
- Demand less than supply - process produces at rate of demand
- Insufficient supply of inputs
- One or more process steps have limited availability (maintenance, breakdowns)

Goal of business is to maximize **profit** not **utilization**

## 3.5 Workload & Implied Utilization ##
**implied utilization** = Demand / Capacity (sometimes Demand is called
  Workload)
- Implied utilization can exceed 100%, such that any resources over 100% do not
have sufficient capacity to meet demand
- Having implied utilization over 100% does not make a resource a bottleneck.
There can only be one bottleneck in a process (where implied utilization is
  the highest!)
- It may be worth adding capacity to any resource with implied utilization over
100%.
- Changing a process by adding capacity may shift the bottleneck from one
resource to another

## 3.6 Multiple Types of Flow Units ##
Breaking down processes requires picking appropriate flow units.  But sometimes
there may be places where processes split and different types of flow units
appear.

Pick a flow unit ("one minute of work", etc...) that allows all demands and
capacities to be expressed in terms of a single unit
