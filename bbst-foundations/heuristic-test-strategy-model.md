# Notes on *Heuristic Test Strategy Model* #
[James Bach](www.satisfice.com) is author of the paper on this subject

## Basic idea of the model ##
*Quality Criteria*, *Project Environment*, and *Product Elements* all affect
*Test Techniques* that will be used, which affect the Perceived Quality,
or result of the testing

**Project Environment** = resources that enable us to test, and constraints
that prevent us from doing complete testing

**Product Elements** = parts of the product that will be tested

**Quality Criteria** = what is used to determine if the product has issues

**Test Techniques** = strategies used to create tests, via analyzing Quality
Criteria, Project Environment, and Product Elements

**Perceived Quality** = result of testing.  We can't know the *actual*
quality, but we can understand some reasonable idea of it

## 9 General Test Techniques ##

1. Function Testing - What can it do?

  1. What are the available functions / subfunctions?
  1. How can we tell if a function is working?
  1. Test each function in isolation
  1. Does each function work?

1. Domain Testing - What are the possible data inputs and how do they
affect possible outputs?

  1. What data gets processed by the system?
  1. What data might we want to test with?
    1. Boundary values
    1. Typical values
    1. Convenient values
    1. Invalid values
    1. Best representative values
  1. What data might make sense to test together in combination?

1. Stress Testing - How can we overwhelm the system?

  1. What parts of the system are most likely to break with extreme data or
  limited resources?  What functions/subfunctions?
  1. What data or other resources are associated with any at-risk functions?
  1. Identify data or conditions that will stress the system and test to
  those

1. Flow Testing - What happens if we do different things in sequence?

  1. What can be tested one after another for end-to-end coverage?
  1. Between runs, make sure not to reset the system
  1. Try different timing, different ordering, and stuff in parallel

1. Scenario Testing - What might a user actually do?

  1. What happens *around* the product?
  1. What interactions with the product are meaningful to the user?
  1. Think of things as a story of how *someone* does *something* with
  the product

1. Claims Testing - What claims do we make about it, and are they true?

  1. What reference materials describe the product?
  1. Are any of the claims too vague?
  1. Test each claim to ensure they're all true
  1. Align the product with the claims where necessary

1. User Testing - Use or simulate actual users and see what they do

  1. What types of users are there, or what roles do they fill?
  1. What use cases exist, how do they execute them, and what do they value?
  1. Real users / data are best
  1. Simulate if you have to, but be careful
  1. Use a mix of user roles and users, not just one

1. Risk Testing - What sorts of problems can we think of, then try?

  1. What sorts of things might be problems for the product?
  1. Which problems matter most?
  1. Design tests for the interesting / high-risk problems
  1. Use experts, design details, past bugs, or other risk heuristics to
  help develop

1. Automatic Testing - How can we automatically generate tests?
  1. How can we make a lot of different tests?
  1. Create an automated way to create tests and evaluate results
  1. Write a program to do the test generation, execution, and analysis of
  results

## Project Environment Factors ##
Each of the following factors and considerations affect the design of
tests and can be viewed as a possible resource / hindrance

- Customers
- Information
- Developer Relations
- Test Team
- Equipment / Tools / Instrumentation
- Schedule
- Test Items
- Deliverables

## Product Elements ##
Dimensions across which products can be examined

- Structure
- Functions
- Data
- Platform
- Operations
- Time

## Quality Criteria ##
Potential risks to consider

### Operational ###
- Capability
- Reliability
- Usability
- Security
- Scalability
- Performance
- Installability
- Compatibility

### Development ###
- Supportability
- Testability
- Maintainability
- Portability
- Localizability
