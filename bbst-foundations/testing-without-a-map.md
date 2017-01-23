# Notes from *Testing Without a Map* Article #
Article by Michael Bolton and James Bach

Many times, testing can and should occur in the absence of a written
specification, especially a complete specification.
- Examining a product to understand if it meets your (company's) needs
- Looking at a product so different from outdated documentation that the
specification is useless even if it's available
- Working on Agile projects

Even in "complete" specifications, much implicit information exists,
especially for longer documents

Informal specifications may be derived from conversations or meetings via
inference

Exploration can always provide a tester with useful information about a
product, even toward developing more detailed future test strategy

Two key aspects of exploratory testing:
1. **oracles** = principles or mechanisms that determines if the software is
working according to someone's criteria
2. **heuristics** = a rough, fallible guide used for examining or solving a
problem

## Mnemonic: HICCUPPS ##
A product should be consistent with:
- **History**: The feature should work now consistent with how it did in the
past, unless there's a good reason for it to have changed.  Useful for testing
new versions of existing products
- **Image**: The product should look and behave according to an image the
firm would want it to be viewed as by customers or internal users.  If it
looks lame it probably is lame
- **Comparable Products**: Other products (competitor's for example), may
serve as a standard against which to evaluate the product
- **Claims**: Claims made in specifications, help files, ads, email
messages, conversations, etc... should be true of the product assuming the
source of the claim has the required authority to claim such things
- **User's Expectations**: Features should work the way we would expect
users would want them to, within reasonable expectations.
- **The Product Itself**: Features should be consistent with other features
of the same product unless there is a reason to not be consistent with such
patterns
- **Purpose**: Feature behavior should align with the apparent purpose of
the product
- **Statutes**: Features should work in compliance with appropriate legal or
regulatory requirements

Heuristics are guidelines, not mandates.  They can guide exploratory testing
but are not infallible or complete.

Such an approach as the HICCUPPS mnemonic can provide credibility as to
"why" issues found may be worth noting despite lacking a written spec
