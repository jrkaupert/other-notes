# Exam Prep #
These are my answers toward prepping for the final exam, and are not intended
to indicate actual answers expected by AST.

## S1: Black Box / Glass Box ##
> What is the primary difference between black box and glass box testing? What
kinds of bugs are you more likely to find with black box testing? With glass
box?

Primary Difference
- The primary difference between black box and glass box testing is that black
box testing focuses on externally visible behavior of a system while glass box
testing focuses on behavior that is internal to the system.

Bugs More Likely Found by Black Box
- inconsistencies with the product against previous versions
- inconsistencies with the product against user expectations
- errors produced by invalid user inputs, where the function is directly
accessible to the system user

Bugs More Likely Found by Glass Box
- errors produced by invalid function inputs, where the function is not
directly accessible to the system user
- places where exceptions are not being handled gracefully
- memory leaks

## S2: Self-Verifying Data as an Oracle ##
> Describe a situation in which you would use self-verifying data as an oracle.
(How would you use it; what type of data would you use it for.)

Situation
One situation for using self-verifying data as an oracle could be in testing
file downloads to ensure the program used to download the file correctly
downloads the file without corruption.

Usage
1. Generate a checksum for the file to be downloaded.  
2. Download the file.
3. Generate a checksum for the downloaded file.
4. Compare the checksums.

Type of Data Used for
Various files with different extensions, formats, amounts of data. Exercising
the program with these variations would provide confidence in the program's
ability to download files correctly, assuming the resulting checksums match
their standard.

## S3: Measuring Productivity ##
> Let’s measure the productivity of programmers by counting their lines
(statements) of code. Supposing that this is a measure of performance of
programmers, is it a ratio-scaled measure of performance? Why or why not?

Yes, it is a ratio-scaled measure of performance.

A ratio-scaled measure must satisfy the following equation:
  a / b = (k*a) / (k*b) for any constant k

If programmer A produces 100 lines of code, and programmer B produces 200 lines
of code, the equation produces:
  100 / 200 = 100*k / 200*k, which is a true equation for any constant k

Using such a measure, programmer A was half as productive as programmer B, given
by the 100/200 or 1/2 ratio of the two measures.  Programmer A wrote 1 line
for every 2 lines B wrote.

## S4: Floating Point Numbers ##
> X is a floating point number, stored to 5 decimal digits of precision. What set
of numbers could you input to X that would be stored equivalently to PI? What
set of numbers would be equivalent to PI/10000?

> Note that pi equals
3.141592653589793238462643383279502884197169399375105820...

> Note: a test question might use different constants but would be identical to
this question in all other respects.

Equivalence to PI
PI would be stored as 3.1416 to 5 decimal digits of precision.  Thus, the set
of input values that would be stored equivalently includes 3.1416, any numbers
that round up to 3.1416, and any numbers that round down to 3.1416.  The
question does not specify any limitations on how many digits can be input to
X, so it would be a fruitless exercise to try to list actual upper and lower
limits.

Equivalence to PI/10000
PI/10000 would be stored as 3.1416e-4 to 5 decimal digits of precision.  Thus,
the set of input values that would be stored equivalently includes 3.1416e-4,
any numbers that round up to 3.1416e-4, and any numbers that round down to
3.1416e-4.

## S5: SoftCo's Footnote Problem ##
> SoftCo makes a word processing program. The program exhibits an interesting
behavior. When you save a document that has exactly 32 footnotes, and the total
number of characters across all footnotes is 1024, the program deletes the last
character in the 32nd footnote. Think about the "Consistency with History"
heuristic. Describe the type of research that you would do, and give an example
of the type of argument you could make on the basis of that research, to argue
that this behavior is inappropriate.

> Note: Some students abandon their common sense when they answer this question.
 Think realistically about this bug as you consider your possible answers.

Research
Start by looking to see if previous of this program versions are available on
the internet.  If not, ask people at SoftCo for a previous version.  Identify
if this issue occurs in previous versions.

Argument to be Made
If the issue was present in previous versions, appeal to another heuristic as
to why this behavior is inappropriate, as if the issue was previously present,
the issue is not inconsistent with history.

If the issue was not present in a previous version, present the issue to the
development team.  Argue that since it was not present previously, user
expectation would be that saving their files would not have this type of
behavior in future versions either.  There is no useful reason for such a
behavior to be added to the save feature, so it shouldn't occur in the product.

## S6: Complete Specification ##
> What does it mean to specify a test by describing the precondition state of
the program (and the system it runs on), the steps you take during the test and
the resulting post-condition state? (Define the terms.) Would this be a complete
specification of the test? Why or why not? Is it practical to do this? Why or
why not?

Precondition State
The precondition state defines any set of settings, conditions, or other
elements that identify how a system or program under test is set up before
test steps occur.  This could include elements for the system or program itself,
or for the platform the system or program run on, as well as the similar
conditions of any systems that interact with the system or program under test
during the test steps.

Steps Taken
The steps taken during the test are the actions performed starting from the
precondition state to obtain information about the system.

Post-Condition State
Similar to the precondition state, the post-condition state defines any set of
settings, conditions, or other elements that identify how a system or program
under test or its platform or interfacing systems are set up after the
completion of test steps.

Discussion of Completeness
Specifying a test in terms of precondition, steps taken, and post-conditions
is not complete, as there are an infinite number of variables that could be
identified for precondition and post-condition states, as well as an infinite
number of variables that need to be captured as the conditions during
steps taken in order to truly be complete.  For example, time of day, number
of seconds to perform each test step, or phase of the moon could all be
legitimate conditions that could affect a test, but might be difficult to
effectively capture, or even find relevance in.

Discussion of Practicality
It is not practical to try to completely capture preconditions, steps taken,
and post-conditions, however, it can be very useful to capture information that
is deemed most-relevant to the test in order to improve repeatability and make
the intent of the test clear.

## S7: Paths Through the Program ##
> Consider a program with two loops, controlled by index variables. The first
variable increments (by 1 each iteration) from -3 to 20. The second variable
increments (by 2 each iteration) from 10 to 20. The program can exit from either
loop normally at any value of the loop index. (Ignore the possibility of invalid
values of the loop index.) If these were the only control structures in the
program, how many paths are there through the program?

> If the loops are nested?
If the loops are in series, one after the other?
If you could control the values of the index variables, what test cases would
you run if you were using a domain testing approach?

> Please explain your answers with enough detail that I can understand how you
arrived at the numbers.

> Note: a question on the test might use different constants but be identical to
this question in all other respects.

These answers assume the loop index variables are inclusive of end points.

For the first loop with indices from -3 to 20, there are 24 total indices.
For the second loop with indices from 10 to 20, incrementing by 2, there are
6 total indices.

Nested Loop Paths
If the loops are nested, there are 24 * 6 = 144 paths through the program.

Series Loop Paths
If the loops are in series, there are 24 + 6 = 30 paths through the program.

Test Cases via Domain Testing
For the first loop with indices from -3 to 20, test all of the integer values
between -3 and 20, as well as -4 and 21.

For the second loop with indices from 10 to 20 by 2s, test all of the integer
values between 10 and 20 by 1's, and 8, 9, 21, and 22.

Such testing would cover boundary cases, as well as normal cases.


## S8: How many valid password entries could you test? ##
> A program asks you to enter a password, and then asks you to enter it again.
The program compares the two entries and either accepts the password (if they
match) or rejects it (if they don’t). An entry is "valid" if it contains only
letters and/or digits and is neither too short nor too long. How many valid
entries could you test? (Please show and/or explain your calculations.)

Valid Entries
26 letters * 2 cases = 52 letters
10 numbers (0-9) = 10 numbers
Total valid characters = 62

m = maximum password length (anything longer is "too long")
n = minimum password length (anything shorter is "too short")

Each character in the password has 62 possible values.  If using the minimum
password length, there will be 62^n possible entries.  If using the maximum
password length, there will be 62^m possible entries.  For password lengths
between n and m, each additional character adds one to the exponent of the
minimum value until you reach the maximum value.

Thus, the total number, T, of valid entries that could be tested for a single
password field is given by:
T = 62^n + 62^(n+1) + 62^(n+2) + ... + 62^(m-1) + 62^m.

Not likely required by the question based on the definition of a "valid entry":
These valid entries could be tested in either the first password entry field
or second password entry field of the program, which would give T^2 total
possible tests for valid entries being provided to both fields.

## S9: Finding and Missing Defects Using Line-and-Branch Coverage ##
> Give two examples of defects you are likely to discover and five examples of
defects that you are unlikely to discover if you focus your testing on
line-and-branch coverage.

Defects You Are Likely to Discover
1. Defects resulting from syntax errors
2. Defects resulting from expected values input to functions

Defects You Are Unlikely to Discover
1. Defects resulting from interrupts
2. Defects resulting from code that should have been written but doesn't exist
3. Defects resulting from unexpected values such as divide by 0
4. Defects resulting from specific combinations of input data
5. Defects related to system stress under heavy load


## S10: Test Coverage and Missed Bugs ##
> How is it that you can achieve very high coverage from your tests but still
miss lots of bugs?

Various types of coverage exist and can be achieved at high levels, but
each type of coverage does not cover all types of bugs.  Coverage looks at
identifying how much testing of a given type has been done compared to the total
possible set of tests of that type.

For example, one type of coverage is line-and-branch.  Even if complete
line-and-branch coverage is achieved, some examples where line-and-branch
coverage may not adequately find significant bugs would be:
- Bugs resulting from parts of the code using interrupts
- Bugs resulting from a mismatch between customer expectations or needs and the
delivered product
- Bugs resulting in specific scenarios where the system is stressed with a heavy
load

## S11: Complete Path Coverage ##
> Why is it usually impossible to achieve complete path coverage? Use examples
to clarify your answer.

Complete path coverage is often impossible because even a small number of
looping and branching constructs quickly increases the total possible number of
combinations of paths that would have to be tested.

Additionally, every piece of hardware or other software the system under test
can interface with adds additional paths to test beyond the system's own
internal software paths.

Finally, the presence of interrupts in a program adds an uncountable number of
new paths that could be taken, as interrupts could occur at any time, from
any portion of the code.

## L1: Information Objectives ##
> Suppose you were testing a spreadsheet. Consider testing with each of these
two information objectives: “Assess conformance to specifications” versus
“Block premature product releases.” How might your testing be similar and how
might it be different under these objectives.

Similarities
1. Both methods would likely explore the areas of the product that are most
at risk for customer-facing issues.  Since specifications likely identify
functionality that is most commonly used by the user, and since one major
reason to block a premature release would be for functionality that is most
widely used by the customer, both types of testing would likely cover the
same or similar feature sets.  Additionally, both objectives lend themselves
to a similar stopping criteria, based on some predefined set of tests.
2. Both methods would likely be time-boxed.  Assessing conformance to
specifications is generally given a fixed amount of time in a schedule for
completion, and blocking premature product releases would likely have a
deadline for assessing a Go/No-Go decision.  In contrast to other testing
objectives such as general product quality assessment that might have no clear
deadline, both of these objectives would lend themselves to deadlines as
they occur near the software release point of the development cycle.
3.


Differences
1.
2.
3.

## L2: SoftCo's Footnote Problem ##
> SoftCo makes a word processing program. The program exhibits an interesting
behavior. When you save a document that has exactly 32 footnotes, and the total
number of characters across all footnotes is 1024, the program deletes the last
character in the 32nd footnote.

> Think about the "Consistency with our Image" heuristic. Describe the type of
research that you would do, and give an example of the type of argument you
could make on the basis of that research, to argue that this behavior is
inappropriate.

> Think about the "Consistency with Comparable Products" heuristic. Describe
the type of research that you would do, and give an example of the type of
argument you could make on the basis of that research, to argue that this
behavior is inappropriate.

> Think about the "Consistency within Product" heuristic. Describe the type of
research that you would do, and give an example of the type of argument you
could make on the basis of that research, to argue that this behavior is
inappropriate.

> Note: Some students abandon their common sense when they answer this
question. Think realistically about this bug as you consider your possible
answers.

Consistency with Image Heuristic
Research

Example

Consistency with Comparable Products Heuristic
Research

Example


Consistency within Product Heuristic
Research

Example


## L3: The Defect Arrival Rate ##
> What is the Defect Arrival Rate? Some authors model the defect arrival rate
using a Weibull probability distribution. Describe this curve. Suppose that a
company measures its project progress using such a curve. Describe and explain
the impact of two of the pressures testers are likely to face early in the
testing of the product and two of the pressures they are likely to face near
the end of the project.

Definition of Defect Arrival Rate

Description of Weibull Probability Distribution

Description & Explanation of Pressures
Early Pressure 1

Early Pressure 2

Late Pressure 1

Late Pressure 2

## L4: Easter Eggs ##
> SoftCo publishes software. Their president hates Easter Eggs and has
instructed the test group to find every one (if there are any) in the product
it is testing. As lead tester, it is your task to figure out how to test for
Easter Eggs and when to declare the job done. How will you decide when you have
finished this task? Present your ideas, their strengths and weaknesses.

Finishing Criteria
1. Time-box
3. Build credibility with devs and see if you can get them to spill information
about any possible Easter Eggs

Strengths of Criteria

Weaknesses of Criteria

## L5: Using Code Coverage ##
> Distinguish between using code coverage to highlight what has not been tested
from using code coverage to measure what has been tested. Describe some
benefits and some risks of each type of use. (In total, across the two uses,
describe three benefits and three risks.)

Code Coverage for Measuring What's Not Been Tested
Benefits

Risks

Code Coverage for Measuring What's Been Tested
Benefits

Risks


## L6: Primary Information Objectives ##
> Suppose that a test group's mission is to achieve its primary information
objective. Consider (and list) three different objectives. For each one, how
would you focus your testing? How would your testing differ from objective to
objective?

Objective 1
- The objective itself
- How to focus the testing

Objective 2
- The objective itself
- How to focus the testing

Objective 3
- The objective itself
- How to focus the testing

Differences between testing across objectives

## L7: Using Consistency Heuristics ##
> While testing a browser, you find a formatting bug. The browser renders
single paragraph blockquotes correctly—it indents them and uses the correct
typeface. However, if you include two paragraphs inside the
<\blockquote>…</\blockquote> commands, it leaves both of them formatted as
normal paragraphs. You have to mark each paragraph individually as
blockquote.

> Consider the consistency heuristics that we discussed in class. Which
three of these look the most promising for building an argument that this
is a defect that should be fixed?

> For each of the three that you choose:
  - Name the heuristic
  - Describe research that this heuristic suggests to you
  - Describe an argument that you can make on the basis of that research

Heuristic 1
- Name
- Research
- Argument that can be made

Heuristic 2
- Name
- Research
- Argument that can be made

Heuristic 3
- Name
- Research
- Argument that can be made

## L8: Oracles and Automation ##
> Suppose you have written a program that allows you to feed commands and
data to Microsoft Excel and to Open Office Calc and to see the results.
The program is complete, and it works correctly. You have been asked to
test a new version of Calc and told to automate all of your testing. What
oracles would you use to help you find bugs? What types of information
would you expect to get with each oracle?

> Note: Don’t just echo back a consistency heuristic. Be specific in your
description of a relevant oracle.

Oracle 1
- expected information

Oracle 2
- expected information

Oracle 3
- expected information

## L9: Measurement ##
> Kaner and Bond define measurement as follows: “Measurement is the
empirical, objective assignment of numbers to attributes of objects or
events (according to a rule derived from a model or theory) with the
intent of describing them.”
Consider this case:

> A professor decides to base the grades in her class on the height of her
students. The taller the student, the higher the grade. Grades will be
assigned on a 1-100 scale. The tallest student earns 100, all other
students are given a score that matches the ratio (expressed as a
percentage) of their height to the tallest student’s height.

>
  1. Is this a measurement under this definition?
  1. Justify your answer to (1)
  1. Is this a surrogate measure? Explain why or why not.
  1. Briefly describe three problems with this proposed measure.

Does this fit the definition of measurement?
- Yes / no
- Justification

Is this a surrogate measure
- Yes/no
- Justification

Problems with the measure
Problem 1

Problem 2

Problem 3
