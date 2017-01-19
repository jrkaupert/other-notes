# Exam Prep #
These are my answers toward prepping for the final exam, and are not intended
to indicate actual answers expected by AST.

## S1: Black Box / Glass Box ##
> What is the primary difference between black box and glass box testing? What
kinds of bugs are you more likely to find with black box testing? With glass
box?

## S2: Self-Verifying Data as an Oracle ##
> Describe a situation in which you would use self-verifying data as an oracle.
(How would you use it; what type of data would you use it for.)

## S3: Measuring Productivity ##
> Let’s measure the productivity of programmers by counting their lines
(statements) of code. Supposing that this is a measure of performance of
programmers, is it a ratio-scaled measure of performance? Why or why not?

## S4: Floating Point Numbers ##
> X is a floating point number, stored to 5 decimal digits of precision. What set
of numbers could you input to X that would be stored equivalently to PI? What
set of numbers would be equivalent to PI/10000?

> Note that pi equals
3.141592653589793238462643383279502884197169399375105820...

> Note: a test question might use different constants but would be identical to
this question in all other respects.

## S5: SoftCo's Footnote Problem ##
> SoftCo makes a word processing program. The program exhibits an interesting
behavior. When you save a document that has exactly 32 footnotes, and the total
number of characters across all footnotes is 1024, the program deletes the last
character in the 32nd footnote. Think about the "Consistency with History"
heuristic. Describe the type of research that you would do, and give an example
of the type of argument you could make on the basis of that research, to argue
that this behavior is inappropriate.

> Note: Some students abandon their common sense when they answer this question. Think realistically about this bug as you consider your possible answers.

## S6: Complete Specification ##
> What does it mean to specify a test by describing the precondition state of
the program (and the system it runs on), the steps you take during the test and
the resulting post-condition state? (Define the terms.) Would this be a complete
specification of the test? Why or why not? Is it practical to do this? Why or
why not?

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

## S8: How many valid password entries could you test? ##
> A program asks you to enter a password, and then asks you to enter it again.
The program compares the two entries and either accepts the password (if they
match) or rejects it (if they don’t). An entry is "valid" if it contains only
letters and/or digits and is neither too short nor too long. How many valid
entries could you test? (Please show and/or explain your calculations.)

## S9: Finding and Missing Defects Using Line-and-Branch Coverage ##
> Give two examples of defects you are likely to discover and five examples of
defects that you are unlikely to discover if you focus your testing on
line-and-branch coverage.

## S10: Test Coverage and Missed Bugs ##
> How is it that you can achieve very high coverage from your tests but still
miss lots of bugs?

## S11: Complete Path Coverage ##
> Why is it usually impossible to achieve complete path coverage? Use examples
to clarify your answer.

## L1: Information Objectives ##
> Suppose you were testing a spreadsheet. Consider testing with each of these
two information objectives: “Assess conformance to specifications” versus
“Block premature product releases.” How might your testing be similar and how
might it be different under these objectives.

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

## L3: The Defect Arrival Rate ##
> What is the Defect Arrival Rate? Some authors model the defect arrival rate
using a Weibull probability distribution. Describe this curve. Suppose that a
company measures its project progress using such a curve. Describe and explain
the impact of two of the pressures testers are likely to face early in the
testing of the product and two of the pressures they are likely to face near
the end of the project.

## L4: Easter Eggs ##
> SoftCo publishes software. Their president hates Easter Eggs and has
instructed the test group to find every one (if there are any) in the product
it is testing. As lead tester, it is your task to figure out how to test for
Easter Eggs and when to declare the job done. How will you decide when you have
finished this task? Present your ideas, their strengths and weaknesses.

## L5: Using Code Coverage ##
> Distinguish between using code coverage to highlight what has not been tested
from using code coverage to measure what has been tested. Describe some
benefits and some risks of each type of use. (In total, across the two uses,
describe three benefits and three risks.)

## L6: Primary Information Objectives ##
> Suppose that a test group's mission is to achieve its primary information
objective. Consider (and list) three different objectives. For each one, how
would you focus your testing? How would your testing differ from objective to
objective?

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

## L8: Oracles and Automation ##
> Suppose you have written a program that allows you to feed commands and
data to Microsoft Excel and to Open Office Calc and to see the results.
The program is complete, and it works correctly. You have been asked to
test a new version of Calc and told to automate all of your testing. What
oracles would you use to help you find bugs? What types of information
would you expect to get with each oracle?

> Note: Don’t just echo back a consistency heuristic. Be specific in your
description of a relevant oracle.

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
