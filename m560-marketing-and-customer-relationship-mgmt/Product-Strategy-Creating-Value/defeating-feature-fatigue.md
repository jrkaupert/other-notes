# Notes from *Defeating Feature Fatigue* #
Article by Roland T. Rust, Debora Viana Thompson, & Rebecca W. Hamilton

## Summary ##
### Idea in Brief ###
- adding lots of features to products to increase revenue is probably
threatening your brand and customer relationships
- consumers think they want more features, but once they start using the
product, they suffer feature fatigue and become overwhelmed by complexity and
annoyed with features they find they don't want or need
  - they'll return items
  - they'll find better alternatives
  - they'll complain about your company to their friends
- avoid by designing products with sufficient features to improve sales while
making sure customers find the product easy to use
- make several products that are tailored to specific segments instead of a
single product that does everything

### Idea in Practice ###
- assess the cost of complexity in existing products
- use analysis to optimize number of features for maximizing initial sales while
keeping the product easy to use
- build simpler products that target narrow segments
- help consumers decide which features they actually need and allow longer
trial periods with the product
- make products that do one thing very well (think iPod)
- use prototypes in market research; consumers only evaluate features and not
ease-of-use when they haven't actually used a product

## Introduction ##
- lots of products now offer substantial numbers of functions, resulting in
feature bloat, featuritis, or feature creep
- adding features to products can make them harder to use
  - the research keeps proving this!

> "Every additional feature is one more thing to learn, one more thing to
possibly misunderstand, and one more thing to search through when looking for
the thing you want." -- Jakob Nielsen

- most customers don't use anywhere near the full set of product features, so
more functions actually make the product LESS valuable
- managers have to balance between maximizing initial sales and maximizing the
longer-term customer satisfaction, which are at odds

## It Slices, It Dices ##
- Why does feature creep keep happening?
  - it costs nearly nothing to add features
  - it's cheaper to produce single products that do many things (serving a
    broad market) than to produce products with fewer features that reach
    smaller segments
  - engineers and early adopters of products don't see a problem with adding
  more features
  - traditional marketing models indicate more features are more appealing
    - consumer preferences center on added utility, each feature adds to the
    net utility of a product from an economic perspective
    - conjoint and discrete choice analyses view products as bundles of
    attributes, assigning partial value to each attribute
    - marketers see every feature as a possible point of differentiation, and
    competitors see them as points of parity

## It Engages, It Enrages ##
- consumers actually have a reasonable idea of what they're getting into with
regard to feature-loaded products, understanding both the potential value added
and the potential for complexity in use
- at the time of purchase, consumers opt for more features, despite the possible
difficulties a product could present, as it maximizes perceived utility
  - true not only for knowledgeable customers, but also for novices
- when offered the chance to customize a product, consumers still loaded up
products with features, and again also realized it would decrease usability
- after actually using the product, consumers realize that usability matters
more than they thought
  - satisfaction rates are higher with simpler products
  - high feature models get rejected at this point

## Before You Add That Next Feature, Do the Math ##
- Assumption: adding features costs (next to) nothing for software, etc...
- Let R = revenue, C = capability bonus, D = usability penalty
  - R = C - D
- Since research shows that adding features has less positive impact on
perceived capability after use than before, define C1 as before use and C2 as
after use capability perceptions
- let d be a multiple of features added (F), and e be a multiple of the same
features
  - C1 = d*F
  - C2 = e*F
  - where C, d, e >0 and d > e
- since usability is perceived to decline with number of features, and this
decline accelerates as features are added, the total usability penalty is
related to the negative effect of the first set of features, a, and the penalty
of the next set of features, b, with a greater negative effect:
  - D = a*F + B*F^2
  - where a, b>0
- first period revenue can be represented by:
  - R1 = C1 - D = (d-a) * F - b * F^2
- second period revenue can be represented by:
  - R2 = C2 - D = (e-a) * F - b * F^2
- need to add a weighting factor (w) to handle the effects of repeat sales which
may have greater impact than initial sales
- total revenue over two periods:
  - Rtot = R1 + w * R2 = [(d-a) + w * (e-a)] * F - (1+w) * b * F^2
- in order to maximize short-term (first period) profits, maximize R1 with
respect to F, which occurs when F1 = (d-a) / (2*b)
- in order to maximize repeat sales (second period), maximize R2 with respect
to F, leading to F2 = (e-a) / (2*b)
- in order to maximize the net present value instead (middle ground between
  the two previous cases), it is necessary to maximize Rtot with respect to F:
  - Fopt = [(d-a) + w*(e-a)] / [2*b*(1+w)]
  - this maximizes customer lifetime value

## Products that Do Too Much ##
- Side effects for giving customers too many features:
  1. product returns
  2. customers take business elsewhere
  3. customers will tell their friends about their dissatisfaction

## Finding the Happy Medium ##
- assess current product complexity and how it affects customers
- consider long-term customer equity over initial preferences
  - optimal number of features depends on company objectives (maximize initial
    sales? maximize repeat business? maximize lifetime customer value?)
- build simpler products
  - build more, simple products instead of all-purpose, feature-loaded ones
- design and provide decision aids to help customers pick between narrower
offerings
- offer longer periods to try the product before purchasing
- make products that do one thing really well
- offer prototypes when performing market research to help consumers understand
usability concerns up front

## Only You Can Fight Feature Fatigue ##
- lots of companies are endangering brand and customer relationships by adding
too many features
- if you want to stop this, don't let your customers suffer from feature fatigue
with your product!
