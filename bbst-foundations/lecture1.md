# Lecture 1 #

Testing is an investigation
- of a product
- under constraints

A tester actively searches for information

The point of testing is to dig up information that we need to know about
the product

Use tools that are best for the given context.  No best practices, since each
situation is unique and has uniquely qualified tools and processes that are
ideal for that situation

Textbook definition of computer program = 'A set of instructions for a computer'
  - the focus on the machine is narrow and preps students to make big errors
  in their career

Preferred definition focuses on stakeholders and the purpose:
  - 'A communication between >=1 humans + computers, distributed over space and
  time that contains instructions that can be executed by a computer'
  - The purpose is to provide value to stakeholders
  - Wouldn't be able to write or improve the code if not for it being a comms
  between humans and the computer

Stakeholder:
  - Anyone affected by outcome of a project
  - Anyone affected by results of a product
  - Anyone affected by results of a service

> Quality is value to some person
> -- Jerry Weinberg

Two components to quality
1. Value (making a change that improves quality should make it worth more)
2. to some person (subjective to different people)

Quality = subjective by its nature.  Different stakeholders will perceive
quality differently for the same product based on their values

Different people testing will look for different things, for different
types of stakeholders

> Any threat to the value of the product to any stakeholder who matters.
> -- James Bach

**A bug (software error)** - anything that takes away from the quality of a
product
  - With this definition, a bug for one person might be a feature for another
  - May or may not be a coding or functional error, or even a design error

We need to consider what makes a product more or less valuable.  Not enough
to merely consider what a programmer thinks makes the product "work"

We test products to learn about the product quality.  Each test we perform
is an experiment and teaches us about the product.  Each of these experiments is
run on behalf of stakeholders who want to know more about the product.

**We can't completely test a product**

Must focus our work around the information we want to obtain (answers to
  questions we want to know)
  - sometimes we want to bug hunt
  - other times we may want to know how the product matches a specification

Vary definitions exist in the field.  Working definitions will be used in this
course

**Black box testing** = "Testing and test design without knowledge of the code"
  - Tests designed from understanding of product's user and user needs, domain
  knowledge, product's market, known risks, and the type of platform (HW/SW)
  - A black box tester is the expert in the gap between the program and the
  domain in which it is executed

**Glass box testing** = we can see into the box.  "Testing or test design using
knowledge of the details of the internals of the program"
  - Does the system do what the programmer wanted it to or expected?
  - instead of the black box question: "does the system do what the user wanted
  it to or expected?"
  - may also be called white box
  - A glass box tester is the expert in the actual implementation of the product
  being tested

**Grey box** = something in between black box and glass box
  - studying variables not visible to end user (log files, etc...)
  - designing tests to stress relationships between variables not visible to end
  user
  - less clear definition here

Black box and glass box testing are **approaches**, not **techniques**.  They
are ways of looking at the world

**Behavioral Testing** = testing focused on the observable behavior of the
product.  May look inside the code to guide the test (knowledge of internals).

Black box testing focuses on what the program should do for the user (what's
the value to the stakeholder...must look beyond the code)

Structural testing = glass box testing (similar to black box vs. behavioral)

**Unit Tests** = individual units of the product.  Often viewed as glass box
testing of individual methods/functions or classes, but not necessarily tied to
glass box testing.  Unit testing (as defined by IEEE) may occur at any level
of the design (any unit)

Black box function testing with no source code looks at how well the feature
itself works.

**Integration tests** = investigating how 2+ units work together. May be black
box or glass box.  May be low-level or high-level.

**System testing** = focuses on value of the running system, or the process of
demonstrating how the program does not meet its objectives / provide value
  - How valuable is the program?

**Implementation-level testing** = focus on details of the Implementation
  - usually glass box
  - unit tests, integration tests, tests of performance, tests of specific parts
  of a program
  - ask if the program works as the programmer intended, or if it can be
  optimized somehow
  - The XP community prefers "Programmer Testing", but is not just tests run
  by programmers

**Functional testing** = system-level testing looking at a program as a
collection of functions (features)
  - black box testing
  - treats program as a function that transforms inputs into outputs

**Functions** take inputs and give expected outputs based on those inputs

**Parafunctional** or **Nonfunctional** testing = deals with anything not
functional.  Could include MANY things.
