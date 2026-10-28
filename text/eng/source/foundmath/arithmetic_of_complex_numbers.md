# Arithmetic of Complex Numbers

While the name complex numbers can give an abstract and complicated impression, you already possess the ability to work with them.
As we already know how to add and distribute algebraic terms, we can directly apply our knowledge to complex numbers.
Rest assured, everything you learned from algebra class applies to the complex numbers, except for a new rule, due to the emergence of imaginary numbers.
In this section, we see how to add, subtract, multiply, and divide complex numbers and how they behave on a special space called a complex plane.
Additionally, we demonstrate two extra moves on a complex plane, which are essential for the next section.

## Imaginary Numbers

From highschool algebra, we learned various techniques to solve quadratic equations.
Some methods like factoring and completing the square were capable when the given quadratic equation was under a special condition.
On the other hand, we were also given a special formula called *quadratic formula*, which allowed us to solve any kind of quadratic equation.
For any given quadratic equation $ax^2 + bx + c = 0$ in simplified form, we could find the roots of this equation by simply plugging $a$, $b$, and $c$ to the following:

$$ \begin{align*}
    x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} \text{.}
\end{align*} $$

Sometimes, to some quadratic equations, using quadratic formula right away feel like an overkill.
Let's say you were solving an equation $x^2 - 1 = 0$.
We still could let $a = 1$, $b = 0$, and $c = -1$ and plug those into the quadratic equation to get our roots.
However, equations in this form is too easy, so we immediately see that we can write $x^2 = 1$ and put square roots on both sides to get $x = \pm\sqrt{1} = \pm1$.

What about $x^2 + 1 = 0$?
The only difference is the sign between $x^2$ and $1$, so we can take the same approach -- subtracting $1$ and putting square roots on both sides.
In the middle of the process, we end up getting $x^2 = -1$, but a question naturally arises: What is a number that gives a negative value after being squared?
No matter what real number we plug into $x$, we cannot make $-1$ by squaring it, so we cannot solve the equation.

It is because there was no real number that can satisfy this equation.
If we suppose there was a number that solves this equation, that must be something out of reach by the reals -- an imaginary one.
<!-- We define such number, denoted by $\mathrm{i}$, as $\mathrm{i} \equiv \sqrt{-1}$. 
Here, we use a three-bar sign ($\equiv$) instead of an equal sign ($=$) to emphasize that this is a definition.
Once we let $x = \mathrm{i}$, the equation is solved.

> **Definition**:
> Imaginary unit $\mathrm{i}$ is a number that satisfies $\mathrm{i}^2 = -1$.

In particular, an imaginary number $\mathrm{i}$ is called an imaginary unit, since any other imaginary numbers can be represented by a multiplication of a real number and an imaginary unit.
For instance, if we were to solve $x^2 + \pi = 0$, the solution of this equation is $x = \sqrt{-\pi} = \sqrt{\pi}\sqrt{-1} = \sqrt{\pi}\mathrm{i}$.
More formally, we define the imaginary unit as a number that satisfies this condition: $\mathrm{i}^2 = -1$.
While this definition feels more abstract, using this definition will be more beneficial than the one involving a square root.
It is because we can simply replace $\mathrm{i}^2$ with $-1$ for every occurrence.
Also, defining $\mathrm{i} = \sqrt{-1}$ just leaves us a question of what actually $\sqrt{-1}$ is, but defining what it actually does instead allows us to use its specialty right away. -->

> [!WARNING]
>
> On some occasion, notating $\mathrm{i} = \sqrt{-1}$ can be misleading.
> For example, consider the following reasoning:
$$ \begin{align*}
    \mathrm{i}^2
    &= \sqrt{-1}\sqrt{-1} \\
    &= \sqrt{(-1)(-1)} \\
    &= \sqrt{1} \\
    &= 1 \text{.}
\end{align*} $$
> Without any doubt, this is false.
> This fallacy occurs because of ignoring the fact that $\sqrt{a}\sqrt{b} \neq \sqrt{ab}$ when $a$ and $b$ are negative numbers.

> [!TIP]
>
> In this text, imaginary unit $\mathrm{i}$ is treated as a unit, so $\mathrm{i}$ is always placed after a real number, just like how units such as miles and degrees are placed after a number.
> It is completely acceptable to write $\mathrm{i}$ first since $a\mathrm{i} = \mathrm{i}a$ for any real number $a$.
> Especially for imaginary numbers with radical expressions, say $\sqrt{a}\mathrm{i}$, some prefer to write $\mathrm{i}$ first, $\mathrm{i}\sqrt{a}$, so they don't have to worry about the stroke from the radical sign crossing over the $\mathrm{i}$ like $\sqrt{a\mathrm{i}}$.
> Therefore, it is recommended to write $\mathrm{i}\sqrt{a}$ instead of $\sqrt{a}\mathrm{i}$ in your handwriting.

## General Structure

Now, imagine adding a real number and an imaginary number altogether.
While it may sound nonsense to add something not real to a real number, bear with it for now.
In fact, we have encountered such number while solving a special kind of quadratic equation; say, $x^2 + x + 7 = 0$.
By using the quadratic formula, we can easily obtain one of the solutions: $x = -\frac{1}{2} + \frac{3\sqrt{3}}{2}\mathrm{i}$.
This is a complex number, and we can see that it is composed of two parts: real part $-\frac{1}{2}$ and imaginary part $\frac{3\sqrt{3}}{2}$.
As you can see, complex numbers are just two real numbers in disguise with a special rule: $\mathrm{i}^2 = -1$.

In a bigger picture, both real numbers and imaginary numbers are complex numbers.
As we write a complex number as $a + b\mathrm{i}$, we can write all real numbers as $a + 0\mathrm{i}$.
Likewise, all imaginary numbers can be written as $0 + b\mathrm{i}$.
In other words, real numbers and imaginary numbers are special cases of complex numbers.
To distinguish from real numbers, we use $z$ instead of $x$ for complex variables from now on.

> **Definition**:
> Complex numbers are $z = a + b\mathrm{i}$ where $a$ and $b$ are real numbers.

> **Definition**:
> For a given complex number $z = a + b\mathrm{i}$, the real part of the complex number $z$ is $a$.
> Likewise, the imaginary part of the complex number $z$ is $b$.

## Complex Plane

Think of our friendly $xy$-coordinate plane.

## Complex Conjugate

> **Definition**:
> The complex conjugate of a complex number $z = a + b\mathrm{i}$ is $z^* = a - b\mathrm{i}$.

> [!NOTE]
>
> In some other texts, mathematics in particular, complex conjugate of $z = a + b\mathrm{i}$ is notated as $\overline{z} = \overline{a + b\mathrm{i}}$.

## Addition

> **Definition**:
> The addition of two complex numbers $z_1 = a_1 + b_1\mathrm{i}$ and $z_2 = a_2 + b_2\mathrm{i}$ is $z_1 + z_2 = (a_1 + a_2) + (b_1 + b_2)\mathrm{i}$.

## Additive Inverse

## Subtraction

> **Definition**:
> The subtraction of two complex numbers $z_1 = a_1 + b_1\mathrm{i}$ and $z_2 = a_2 + b_2\mathrm{i}$ is $z_1 - z_2 = (a_1 - a_2) + (b_1 - b_2)\mathrm{i}$.

## Multiplication

$$ \begin{align*}
    z_1z_2
    &= \left(a_1 + b_1\mathrm{i}\right) \left(a_2 + b_2\mathrm{i}\right) \\
    &= a_1a_2 + a_1b_2\mathrm{i} + a_2b_1\mathrm{i} + b_1b_2\mathrm{i}^2 \\
    &= \left(a_1a_2 - b_1b_2\right) + \left(a_1b_2 + a_2b_1\right)\mathrm{i}
\end{align*} $$

> **Definition**:
> The multiplication of two complex numbers $z_1 = a_1 + b_1\mathrm{i}$ and $z_2 = a_2 + b_2\mathrm{i}$ is $(a_1a_2 - b_1b_2) + (a_1b_2 + a_2b_1)\mathrm{i}$.

## Multiplicative Inverse

## Division

$$ \begin{align*}
    \frac{z_1}{z_2}
    &= \frac{z_1{z_2}^*}{z_2{z_2}^*} \\
    &= \frac{\left(a_1 + b_1\mathrm{i}\right) \left(a_2 - b_2\mathrm{i}\right)}{\left(a_2 + b_2\mathrm{i}\right) \left(a_2 - b_2\mathrm{i}\right)} \\
    &= \frac{\left(a_1a_2 + b_1b_2\right) + \left(-a_1b_2 + a_2b_1\right)\mathrm{i}}{\left(a_2a_2 + b_2b_2\right) + \left(-a_2b_2 + a_2b_2\right)\mathrm{i}} \\
    &= \frac{a_1a_2 + b_1b_2}{{a_2}^2 + {b_2}^2} + \frac{a_2b_1 - a_1b_2}{{a_2}^2 + {b_2}^2}\mathrm{i}
\end{align*} $$

> **Definition**:
> The division of two complex numbers $z_1 = a_1 + b_1\mathrm{i}$ and $z_2 = a_2 + b_2\mathrm{i}$ is $\frac{z_1}{z_2} = \frac{a_1a_2 + b_1b_2}{{a_2}^2 + {b_2}^2} + \frac{a_2b_1 - a_1b_2}{{a_2}^2 + {b_2}^2}\mathrm{i}$.

## Scaling

## Rotating

## Further Reading
