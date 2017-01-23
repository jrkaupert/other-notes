# Notes on *Using Heuristic Test Oracles* Article #
Post by Michael Kelly at http://www.informit.com/articles/article.aspx?p=463947

How do you know that behavior you find is a bug?
- Heuristic test oracles (via the HICCUPPS approach of Bach/Bolton) can
provide such justification
- Such approaches provide a vocabulary for discussion bugs that don't
have written specifications

Relative Strength of Each Oracle:
1. Inconsistencies in Claims, Comparable Products, and History tend to get
fixed with the most regularity
2. Inconsistencies within the product itself and its purpose tend to get
developer attention but not manager attention
3. Inconsistencies with image or user expectations tend to be ignored, as
they may be viewed more subjectively across the organization

If actual requirements are available, make use of them.  If not, heuristic
oracles can serve a valuable purpose.

Before submitting new defects, run through the HICCUPPS list to identify
reasons behavior is less than ideal.
