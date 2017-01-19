# Lecture 2 #

## Key Questions ##

Questions about testing mission / strategy
- Why are we testing?
- What do we want to find out?
- What's the best way to design our work to attain our goals?

Oracle heuristics
- How can we know a test passes or fails?

Coverage and its dimensions
- How do we assess coverage completed?
- How much do we need to know about the code to answer this question?
- When do we know when we're done?
- How do we measure what we've finished and assess how well we've done at it?

## What is Software Testing? ##

> "Testing is the process of executing a program with the intent of finding
errors."
-- Glen Myers

Another definition:
> "Testing is questioning a product in order to evaluate it"
-- James Bach

Every test is a question.  If you already know the answer, it's a
demonstration, not a test.

Another definition:
> "Software testing is an empirical technical investigation conducted to
provide stakeholders with information about the quality of the product or
service under test"
-- Cem Kaner

Taking Kaner's definition piece by piece:
- Empirical - The world drives our knowledge in testing, not theory.  Lots
of sources provide us this knowledge
- Technical - Various technical methods (experimentation, logic, math,
  models, other programs, and instrucments) are all used
- Investigation - we search for knowledge, and have to ask difficult
questions, and then analyze the information we find
- Conducted to provide stakeholders - People who want either the testing
effort and/or the product to succeed
- with information - we're interested in information we don't already know.
Information is more valuable if it reduces uncertainty by a larger amount.  
Tests that are expected to pass don't really tell us that much. We want
to test each feature more harshly each time
- about the quality - we're interested in any info that may be valuable
to our stakeholders, not just bugs!
- of the product or service under test - Product includes all pieces of the
deliverable the customer gets, including documentation and physical
platforms.  Also includes support and other services offered as part of the
overall sale.

Different stakeholders have different interests / values which means
we have to use a variety of tools and strategies to test, and that
we will produce different tests, corresponding documentation, and types of
results.

## Mission ##
Every project should ask "What is the mission of testing this?"
- Usually the aim is to answer the most important information questions
- If there are too many info objectives, the mission is probably
unachievable.  If there are too many missions, beware
- This question about mission focuses the testing work and creates a
way to prioritize finding some information over other stuff
- The mission will likely evolve over time

Once the mission is known, you have to plan how to complete it:
- **Strategy** = ideas guiding design of testing
  - What resources do we have?
  - What knowledge and skills do we have?
  - What factors are challenging or trivial, cheap or expensive for us?
  - What risks are there?
- **Logistics** = ideas that define how resources are used
- **Plan** = Strategy + Logistics + Project Risk Management

## How to design testing ##
Apply strategy toward certain test techniques/ideas:
- Who's testing, and what are their capabilities/knowledge?
- What types of information is desired?
- What determines "failure" or what smells hint at problems?
- What area of the product is being examined, and what is to be ignored?
- When is this type of testing enough / complete? How do we know?
- How will the testing be done?
- Are any tools required? Do we have to create them?
- Where does the test data come from, if required, and how do we know it's a
good set of data for this?
- What sort of resulting documentation, if any, is to be created?
- Are there any other reports, logs, archives, code, etc... to be created?
- Are there any things about this project that will make testing
challenging?

Some widely used testing techniques:
1. Scenario Testing - Use stories that replicate what stakeholders think
the product should do to drive a series of tests that capture what users
will actually do.  Likely to fix failures because these have credibility
with stakeholders.
2. Domain Testing - Look at variables, consider their domain of values,
appropriately reduce into subset of representative values (high-risk,
boundary, etc...).  Stakeholders may believe extreme values are not
representative of actual use, but this type of testing can provide a lot
of information

Bach's approach -> **Test Techniques are recipes** - they tell you how to
put together some ingredients to make something, but then you modify to fit
your own needs

A test technique usually covers one or more (not all) of these areas:
- what's the situation?
- what's the test space?
- coverage
- oracles
- configuration of tests
- operation of tests
- observation of tests
- analysis of results

## How to Organize Testing Efforts ##
- Want a diverse set of skills when hiring testers (See Kaner's article)
- Want specialization (people can cross-train others)

Typical Tasks:
- Investigate how product can fail
- Exploratory testing of risk areas (bug hunting)
- Develop tests traceable to requirements
- Develop test data sets / tools for use in multiple tests
- Develop tests than can be reused (manual/auto)
- Develop workflows for manual tests or automation (checklists)
- Dig into failures
- Write effective bug reports

Typical Missions for Test Groups:
- Bug hunting
- Advocates for quality
- Support to dev
- Manage releases
- Help cost reduction

Context for the tester shapes the roles and missions
- External labs have pros/cons based on their context

**Verification** - Is the product built correctly?
**Validation** - Does the product meet the user's needs (Was the right product
  built)?
