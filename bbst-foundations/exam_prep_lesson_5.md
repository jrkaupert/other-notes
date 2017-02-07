Rule 1: Run out of time / budget (boss tells you to stop)

Description: This rule stops testing because project or
company resources have run out, or because management
otherwise decides that resources should no longer be spent
toward a goal of completely testing the product.

Tradeoffs:

* Good - Resources are not spent beyond what management
actually has available to spend, or beyond what they desire
to spend
* Bad - This rule has nothing to do with the product, its
features, its risks, or anything related to how it provides
value to a customer.  Additionally it is likely to irritate
testers if it comes suddenly without warning, as it may
end testing as the tester is in the middle of something, or
before documentation can be completed
* Risky - Critical parts of the product could be left
untested, and testing may not be fully documented depending
on the suddenness of applying this rule.  Continued use of
this rule may decrease team morale substantially.

Rule 2: All major functional areas of the product have been
exercised

Description: This rule stops testing when a pre-determined
set of functional areas of the product have been examined by
the test team to the extent that the test team feels risks
have been sufficiently mitigated for product release.

Tradeoffs:

* Good - Testers are allowed to exercise their judgment
in deciding how far to test the product.  High-risk areas
such as new functions can be prioritized over low-risk areas
where little has changed since previous rounds of testing, and more time can be spent in these high-risk areas.
* Bad - While testing is limited to a set of functional
areas, within a single area, testers could continue to test
indefinitely if desired, so this rule may not provide
adequate stopping emphasis for the tastes of management.
* Risky - The use of functional areas as the bounds of
testing may not push the test team to consider types of
tests such as stress tests or user testing that could be
equally useful in providing information about the product.


Rule 3: Every requirement has been tested to

Description: Every requirement in the specification for the
product has been tested, possibly in front of a customer
witness.

Tradeoffs:
* Good - The customer may get satisfaction in knowing the
tests written toward the requirements specification have
been completely executed.  Some degree of confidence in the
product for the development team will also be provided by
such tests.
* Bad - Such testing informs only on areas of the product
where tests were well written, or written at all.  You don't
usually write requirements for the stuff the product isn't
supposed to do, so tests to produce bad behavior won't be
executed.  If negative tests are written in, they still
won't capture the infinite spectrum of bad things that could
happen.
* Risky - Such testing gives a false confidence that the
product works or is reliable when it may not be.  The
product may have worked during the testing, but may be
susceptible when stressed (if no requirements for stress
testing were included) or when used outside of developer
expectations (if no additional scenario testing was
performed)
