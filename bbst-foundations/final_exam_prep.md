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
Do some investigation into the company image, both internal to the company
and external to the company.  Identify what people think of the company in
a few words, and ask if the presence of this type of bug is inconsistent with
the overall image of the company.  If it is consistent, ask if this bug is
consistent with the image the company would like to have.

Example
If the bug is inconsistent with company image, report it to management as such
and identify the possibility that leaving such a bug unfixed would possibly
alter company image negatively.  If the bug is consistent with company image,
report to management that such a company image is not desirable and the bug
should be fixed in order to help improve company image for the future.

Consistency with Comparable Products Heuristic
Research
Look at similar word processing products and identify how they handle footnotes
and how they handle saving.  If no obvious problems exist in either of these
areas (not just the exact issue seen here), the issue in this product is
inconsistent with comparable products.  If similar issues exist in other
similar products, the bug should still be fixed so the company's product looks
better against competitors.

Example
Report to management that comparable problems do not have any issues with saving
or handling of footnotes, and that this issue is inconsistent with the way
similar products work.  Not only would users not expect such behavior, but
it would reflect poorly on the product compared to competitors.  Thus, it should
be fixed to avoid violating user expectations and to remain competitive in the
marketplace.

Consistency within Product Heuristic
Research
Look at other areas of the product (outside of footnotes and saving) to see if
similar behaviors occur elsewhere.  If issues like this are not present, the
product is inconsistent with itself.  If issues like this are present, all such
issues are inconsistent with the working parts of the product and should be
fixed together.

Example
If this is the only type of issue across various parts of the product, report
to management that it should be fixed because this is inconsistent and would
violate user expectations because the rest of the product does not exhibit
such strange behavior.  If other similar issues exist in other areas, report
to management that they should all be fixed because they are inconsistent with
the parts of the product that work well, and collectively violate user
expectations.

## L3: The Defect Arrival Rate ##
> What is the Defect Arrival Rate? Some authors model the defect arrival rate
using a Weibull probability distribution. Describe this curve. Suppose that a
company measures its project progress using such a curve. Describe and explain
the impact of two of the pressures testers are likely to face early in the
testing of the product and two of the pressures they are likely to face near
the end of the project.

Definition of Defect Arrival Rate
The Defect Arrival Rate is an expression of the number of new bugs found
in a system per week.

Description of Weibull Probability Distribution
The Weibull curve expresses bugs per week on a vertical axis against week
on a horizontal axis to graphically display how many new bugs are being
found over time in a project.  It is characterized by a sharp, initial peak,
followed by a similar sharp dropoff, followed by a relatively flat section.
The peak occurs relatively early in the project cycle, with the flat portion
of the curve consuming most of the later half of the project cycle.  The curve
is used by some to estimate project completion date based on number of bugs
being found.

Description & Explanation of Pressures
Early Pressure 1
<<<<<<< HEAD

Early Pressure 2

Late Pressure 1

Late Pressure 2
=======
Testers will be expected to find lots of bugs early.  Testers may be pressured
to find as many trivial bugs as possible while ignoring tests that could provide
information about high-risk areas of the product that could take more time
to identify.  Since management may use this curve to predict a completion date,
the pressure will be to find the most bugs possible early on so the sharp peak
occurs as fast as possible.

Early Pressure 2
If a solid project deadline exists, testers may feel compelled to spend less
time searching for bugs once the project reaches the point where the peak
"should" be reached according to the model in order to make sure the number of
 bugs found continues to match the model.

Late Pressure 1
Testers may feel compelled to not report bugs late in the project in order to
make sure the defect arrival rate matches the curve, or may feel pressures to
hold off on reporting bugs found in one week until the next week in order to
keep the rate of reported bugs relatively constant.  

Late Pressure 2
Testers may feel pressured to run the same sets of regression tests that will
almost certainly pass rather than trying new tests that run the risk of failing.

>>>>>>> 01f494ceb2a19fa3971db3b942ce151b653e5638

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

Code coverage used to highlight what has not been tested involves looking at the
code coverage from the perspective of "what's left" or "where might there be
risk".  Code coverage used to measure what has been tested looks at showing
that one particular type of testing (things that can be measured by code
  coverage) may be complete, but not at how much testing of the entire product
  across types of testing may be complete.

Code Coverage for Highlighting What's Not Been Tested
Benefits
- Code coverage provides an easy indicator of sections of code that have
definitely not been exercised, providing a simple indicator of where additional
attention is warranted.  Such sections are obvious choices for additional
testing.
- Tools exist to assess code coverage, so the cost of applying such a measure
is relatively low, while risk in areas not covered may be high so knowing these
areas is valuable.  Useful info may be gained for relatively low cost in terms
of time or money spent testing.

Risks
- Not all areas of product risk will be identified by areas where there is not
complete code coverage, as code coverage only indicates certain types of testing
have been completed.

Code Coverage for Measuring What's Been Tested
Benefits
- Code coverage shows that a particular type of testing has been completed,
which provides some information about the product quality, although only about
that particular type of testing.

Risks
- There are many types of tests that code coverage metrics do not provide
information about.  Using code coverage metrics as a means of understanding
what's been tested may give an illusion of product quality that is not
meaningful.  For example, things tested as a part of code coverage will not
likely stress the system with heavy load or exercise common use cases of the
product where interrupts greatly affect the system's behavior.
- Use of code coverage to measure what has been tested may incentivize the
stopping of testing early than necessary, as managers may stand behind the
value as justification to ship product despite other tests not being complete.

## L6: Primary Information Objectives ##
> Suppose that a test group's mission is to achieve its primary information
objective. Consider (and list) three different objectives. For each one, how
would you focus your testing? How would your testing differ from objective to
objective?

Objectives:
1. Does the product conform to its specifications?
2. Is the product worth acquiring?
3. Is the product ready to ship?

How to focus the testing
1. Does the product conform to its specifications?
For determining if this objective is met, testing should be focused on running
test cases associated with each requirement in the specification.  Records
should be kept in a spreadsheet or similar to identify which test cases have
been run, their status, and any relevant notes that merit discussion with
stakeholders arising from the tests.  Once all tests have been run, the
primary information objective has been completed.

2. Is the product worth acquiring/using?
For determining if a product is worth acquiring from another company, or buying
for use in your own company's product, testing should focus on two key elements:
  1. Scenario testing to determining if the product appears to work as
  advertised. Specific scenarios that involve using the product as a user might
  in order to accomplish specific goals should be run.
  2. A list of obvious bugs should be populated from exploratory testing of the
  product.  Consistency heuristics could be applied to determine some of these,
  particularly if things are inconsistent within the product or with the image
   of your own company.
Once these tests are complete, the primary information objective has been
completed.

3. Is the product ready to ship?
For determining if a product is ready to ship, the focus of testing should be on
making sure new features work as intended and that old features have not been
broken.  Scenario testing and feature testing of the new features should be
performed, and regression testing of old features.  Once the tests are complete,
the primary information objective has been completed.


Differences between testing across objectives
The primary difference across these objectives is the breadth of testing and
areas being focused.  The first objective uses a specification to determine what
should be tested. The second objective uses use-cases and holistic exploration
of the product to obtain information. The third objective uses new features and
important old features as a gauge of product quality.

A second difference in testing across these objectives is the documentation
required for each is likely to be different.  The first objective will need
detailed documentation regarding the status of every test case that has passed
or failed to support management and/or customer sign-off. The second objective
will need documentation of use cases run, and any use cases that failed, as well
as any bugs that might need to be corrected if the product is acquired or
licensed.  The third objective will need some supporting documentation of which
features were tested and which regression plan was run, but may be flexible in
just how much documentation is needed.

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

Oracle 1: Regression Test Oracle
- Using a regression test oracle would compare results of new builds against
results of older builds.  The automated test would provide information any time
new builds produce different results than the previous build, which will
identify the possibility of bugs introduced by the changes.  Since the program
is known to work correctly already, this oracle would be an ideal fit for
automation.

Oracle 2: Self-Verifying Data
- Using self-verifying data would allow automated tests to check results against
embedded responses, which would be easy to implement for a spreadsheet program.
Such tests would be expected to provide information on whether or not spreadsheet
functions and logic are working correctly, as these functions or logic would
output incorrect values if broken.

Oracle 3: Constraints
- Data could be checked automatically within certain bounding constraints to
identify if fields and functions produce odd values associated with coding
errors.  Similar to self-verifying data, constraints would allow automated
tests to catch some basic issues added in new versions.

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
- No
- Empirical -> Yes
- Objective -> Yes
- Assignment of numbers -> Yes
- To attributes (grades) of objects (students) -> Yes
- According to a rule derived from a model (no) or theory (no) -> No, not based
on a model or theory.
- With the intent of describing them -> Yes, the intent is to grade people based
on their height.  The grade describes the relative height of students in the
class.

Is this a surrogate measure
- If the professor believes academic performance is related to height of
students, then yes, this is a surrogate measure, because height is not a direct
measure of academic performance.
- If the professor does not believe academic performance is related to height of
students and is arbitrarily assigning grades based on height rather than
assuming a relationship between the two exists, then this is not a surrogate
measure, but an arbitrary mapping.

Problems with the measure
Problem 1
If there is not a relationship between academic performance and height, such
a measure is meaningless, as grades are typically a reflection of academic
performance.  Using height as a measure of academic performance in this case
would provide useless information.

Problem 2
Even if there is a relationship between academic performance
and height, the usage of a ratio based on the tallest person in the class
means that classes with different tallest heights will spread grades differently.
For example, if class A has someone 72 inches tall (tallest person who would
  get 100), then someone 36 inches tall in the same class will get a 50.  If
class B has the tallest person at 60 inches tall, someone 36 inches tall will
get a 60.  Using this measure to assign grades would have significant variations
depending on the tallest student's height relative to other students, and thus
would not provide useful information about academic performance, even if
some relationship actually exists between height and academics.  Thus, it is
not a "fair" measure for evaluating students.

Problem 3
Using this as a measure of academic performance would eliminate incentives for
students to learn or try in a class, as no amount of effort would change their
grade.  Additionally, rewarding height with grades might cause shorter students
to bully taller students in an effort to have them not take the same classes
or even drop classes in the middle of the term.
