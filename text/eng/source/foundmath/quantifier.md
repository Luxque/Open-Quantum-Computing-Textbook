# Quantifiers

## Negating Quantified Statements

> **Definition**: This is the definition of a limit.
> $$\lim_{x \rightarrow a} f(x) = L \Leftrightarrow \forall\epsilon, \exists\delta, \forall{x}, |x - a| < \delta \Rightarrow |f(x) - L| < \epsilon$$

Do not worry about the actual meaning behind this statement for now.
Suppose we want to find the case where $\lim_{x \rightarrow a} f(x) \neq L$.
In order to do so, we have to negate the chain of quantifiers above.

$$
    \neg \left( \forall\epsilon, \exists\delta, \forall{x}, |x - a| < \delta \Rightarrow |f(x) - L| < \epsilon \right) \\
    \Updownarrow \\
    \exists\epsilon, \neg \left( \exists\delta, \forall{x}, |x - a| < \delta \Rightarrow |f(x) - L| < \epsilon \right) \\
    \Updownarrow \\
    \exists\epsilon, \forall\delta, \neg \left( \forall{x}, |x - a| < \delta \Rightarrow |f(x) - L| < \epsilon \right) \\
    \Updownarrow \\
    \exists\epsilon, \forall\delta, \exists{x}, \neg \left( |x - a| < \delta \Rightarrow |f(x) - L| < \epsilon \right)
$$

Since we know that $\neg(p \Rightarrow q) \equiv \neg(\neg{p} \lor q) \equiv p \land \neg{q}$, we have

$$
\lim_{x \rightarrow a} f(x) \neq L \Leftrightarrow \exists\epsilon, \forall\delta, \exists{x}, |x - a| < \delta \land |f(x) - L| \geq \epsilon \text{.}
$$

Please note that the statements above are logically equivalent.

## Further Reading

* Stewart, James. *Calculus*. 3rd ed., Brooks/Cole Pub. Co, 1995.
