# Lecture 3 #

## Traditional Definition of Oracles ##
1. A way to determine if a test passed or failed
2. A narrower version: A reference program that can be used in parallel with
the system under test to determine if inputs produce the correct outputs

## Some Terms ##
**SUT** = acronym for system or software under test.  May also be Application
Under Test (AUT) or Program Under Test (PUT)

**Reference Program** = a program by which the SUT is compared (a Reference
  Oracle)

**Comparator** = software or human that evaluates SUT behavior against the
behavior of the oracle

The ideas behind traditional oracle definitions are wrong.  Different
implementations can depend on the same incorrect algorithms, so the reference
system can be incorrect too!  Usually traditional oracles don't exist.

**The Oracle Assumption** = the tester is able to determine whether or not the
output produced on the test inputs is correct (the mechanism determining
  correctness is the test oracle)

If either of the two following conditions are met, the program is "nontestable":
1. An oracle does not exist
2. An oracle may exist but would require too much effort to reach the desired
information on the correct output

Because we use judgment in determining if results are correct, our test data
and results are fallible

## How do you specify your test configuration? ##
- Does your test documentation specify ALL the processes running on your
computer?
- Does the documentation specify the version of each process?
- Can you even tell what version of these processes is running, when the last
update occurred, or if there is a newer update?

Such a specification is largely pointless even if you can get the info

Hard to reproduce bugs occur because of things we think are irrelevant but that
we aren't considering.

Reference programs have limited value because it adds a lot of complexity to
the situation.  All we can say is that the programs behave similarly.

We can't monitor every relevant aspect of our inputs and outputs.  

Selective attention and inattentional blindness make it hard for us to pay
attention  to everything, and programs can only pay attention to things we
tell them to

We can't be certain that a program that "passes the test" actually passes

> "It Works" really means "It appears to meet some requirement to some degree"

An oracle is a heuristic principle or mechanism by which you identify possible
problems.  A decision support tool that is sometimes wrong but still useful.
All (real) oracles are heuristics.

Mainstream engineering relies on heuristics. Heuristics are not rules, however,
but guidelines, and can be detrimental if viewed as rules.

Two types of decision rule errors:
- Misses - we incorrectly conclude the program is working because we do not
see the incorrect behavior (or both the software and the oracle are faulty)
- False Alarms - we incorrectly conclude the program failed because our
interpretation of the correct behavior is faulty

## Consequences for Automation ##
- Automation requires us to programmatically detect failures
- Subject to misses and false alarms
- Automation is constrained by our ability to create and use oracles
