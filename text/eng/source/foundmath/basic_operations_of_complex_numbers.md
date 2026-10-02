# Basic Operations of Complex Numbers

In the previous section, we saw the historical significance behind imaginary numbers and complex numbers.
Just like vectors, we now introduce the basic operations of complex numbers: addition, subtraction, multiplication, and division.

## Structure of Complex Numbers

In the previous section, we observed that solving the equation $x^2 + 1 = 0$ or $x^2 = -1$ raised the question of the existence of $x$.
No matter what we plugged real numbers into $x$, we cannot solve the equation.
Simply, there was no real number that can satisfy this equation.
If we supposed there was a number that solves this equation, that must be something out of reach by the reals: an imaginary one.
We define such a number, denoted by $\mathrm{i}$, as $\mathrm{i} = \sqrt{-1}$. Once we let $x = \mathrm{i}$, the equation is solved.

In particular, the imaginary number $\mathrm{i}$ is called the imaginary unit, since any other imaginary numbers can be represented by a multiplication of a real number and the imaginary unit.
For instance, if we were to solve $x^2 + \pi = 0$, the solution of this equation is $x = \sqrt{-\pi} = \sqrt{\pi}\sqrt{-1} = \sqrt{\pi}\mathrm{i}$.
More formally, we define the imaginary unit as a number that satisfies this condition: $\mathrm{i}^2 = -1$.
While this definition feels more abstract, using this definition would be more beneficial than the one involving a square root when you are dealing with complex numbers.
It is because we can simply replace $\mathrm{i}^2$ with $-1$ for every occurrence.

> **Definition**:
> Imaginary unit $\mathrm{i}$ is a number that satisfies $\mathrm{i}^2 = -1$.

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

## Complex Conjugate

> **Definition**:
> The complex conjugate of a complex number $z = a + b\mathrm{i}$ is $z^* = a - b\mathrm{i}$.

## Addition

> **Definition**:
> The addition of two complex numbers $z_1 = a_1 + b_1\mathrm{i}$ and $z_2 = a_2 + b_2\mathrm{i}$ is $z_1 + z_2 = (a_1 + a_2) + (b_1 + b_2)\mathrm{i}$.

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

## Further Reading