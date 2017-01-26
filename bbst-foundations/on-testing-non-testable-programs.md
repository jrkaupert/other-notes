# Notes on *On Testing Non-testable Programs* #
Article by Elaine J. Weyuker, in *The Computer Journal, 25*(4) from 1982

## The Gist ##
A typical assumption in software testing is that a mechanism (oracle) exists
that can accurately determine if the result of the program is correct.

**Non-testable programs** are programs for which no oracle exists, or for
which an intractably large amount of effort is required to determine if
the output is correct

The oracle assumption may not be a good one in many situations.

## Conclusions ##
Most literature assumes the presence of an oracle for testing, but in
reality this is often not true.  Some semblance of a good idea about the
desired result is available at times, and at others, little to none.

Five items that should be considered for documentation:
1. criteria used to select test data
  - allowed exercising of each path?
  - high risk based on previous versions?
  - exercise each function?
  - chosen at random?
2. Degree to which criteria were fulfilled
3. Test data the program was run on
4. Output produced for each test datum
5. How test results were determined to be correct or acceptable

The items above do not resolve the issue of non-testable programs, but provide
a minimal degree of information regarding how far the product was tested
beyond the opinions of a developer or tester

Adequecy criteria requires demonstration of what results have been shown about
a program.  Branch traversal is one option but has been viewed as a poor
indicator of test adequacy, despite being clear as to how much (percentage)
was covered.  Even still, it is implicit that such coverage also produced
correct results, which cannot usually be determined.

Two barriers to adequacy criteria:
1. unsolvability results (theoretical)
2. Are the results correct? (pragmatic)
