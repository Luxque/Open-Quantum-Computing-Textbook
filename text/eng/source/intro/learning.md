# Learning and Thinking

## Positive Attitude

## Focus Time

## Asking Questions

## Applying What You Learned

## Critical Thinking

## Thinking Outside the Box

## Divide and Conquer

## Occam's Razor

> **Latin**: Pluralitas non est ponenda sine necessitate.
>
> **English**: Plurality should not be posited without necessity.
>
> — *Commentaria oxoniensia ad IV libros magistri sententiarum* by John Duns Scotus

When you are stuck with an abstract concept, you might choose explanations with straightforward reasoning over complicated ones.
This is what Occam's razor is about.
The term Occam's razor refers to when two or more theories with identical conclusions are competing, the one with the simplest explanation is preferred.
You might think that scientists are ruthlessly complex human beings, but this is not true since science adapted this philosophy.
They, like you, also seek the simplest possible explanation of a scientific phenomenon they are studying, but keep the necessary components of the argument to back up their points.

For example, let's say we want to demonstrate that there are infinitely many prime numbers.
To remind you what a prime number is, the widely accepted definition is a natural number greater than $1$ whose divisors are $1$ and itself only.
Also, when a natural number $a$ divides another natural number $b$, it just means $b \div a$ does not have any remainders.
Since the age of Euclid, numerous mathematicians have proposed different proofs of this mathematical fact.
Here, I give you two of them.
I don't expect you to understand everything from these proofs, but I hope you can at least tell which one reads better for you.

> **Proof 1**:
> Suppose there are finite prime numbers.
> Then we can list out exhaustive prime numbers: $p_1$, $p_2$, $\cdots$, $p_m$.
> Let us multiply all of these primes and add $1$, so $q = p_1 p_2 \cdots p_m + 1$.
> There are two cases: $q$ is a prime number or not.
> If $q$ is a prime, then we are saying that we have another prime number we did not list previously.
> If $q$ is not a prime, then there must be a prime number $p$ that divides $q$ from the list.
> But we know that $p$ divides the product $p_1 p_2 \cdots p_m$, so $p$ cannot divide $q = p_1 p_2 \cdots p_m + 1$.
> In both cases, we ended up encountering contradictions.
> Therefore, there must be infinitely many prime numbers.
■

> **Proof 2**:
Just like the previous proof, we initially assume there are finitely many prime numbers.
Let us recall the following facts:
>
> * By the fundamental theorem of arithmetic, for any natural number $n > 1$, we have a unique prime factorization such that $n = {p_1}^{k_1}{p_2}^{k_2}\cdots{p_m}^{k_m} = \prod_{i = 1}^{m} {p_i}^{k_i}$;
> * The harmonic series diverges: $\sum_{n = 1}^{\infty} \frac{1}{n} = \infty$; and
> * If $|r| < 1$, then this geometric series converges: $\sum_{k = 0}^{\infty} r^k = \frac{1}{1 - r}$.
> 
> Let us denote prime numbers as $p_1$, $p_2$, $\cdots$, $p_m$.
> Note that $\prod_{i = 1}^{m} \frac{p_i}{p_i - 1}$ does not diverge to infinity.
> By using the facts listed above and distributing the multiplication, we get:
$$
\begin{align*}
    \prod_{i = 1}^{m} \frac{p_i}{p_i - 1}
    &= \prod_{i = 1}^{m} \frac{1}{\frac{p_i - 1}{p_i}} \\
    &= \prod_{i = 1}^{m} \frac{1}{1 - \frac{1}{p_i}} \\
    &= \prod_{i = 1}^{m} \sum_{k = 0}^{\infty} \frac{1}{{p_i}^k} \\
    &= \left( \sum_{k = 0}^{\infty} \frac{1}{{p_1}^k} \right) \left( \sum_{k = 0}^{\infty} \frac{1}{{p_2}^k} \right) \cdots \left( \sum_{k = 0}^{\infty} \frac{1}{{p_m}^k} \right) \\
    &= \left( \sum_{k_1 = 0}^{\infty} \frac{1}{{p_1}^{k_1}} \right) \left( \sum_{k_2 = 0}^{\infty} \frac{1}{{p_2}^{k_2}} \right) \cdots \left( \sum_{k_m = 0}^{\infty} \frac{1}{{p_m}^{k_m}} \right) \\
    &= \sum_{k_1 = 0} \sum_{k_2 = 0} \cdots \sum_{k_m = 0} \frac{1}{{p_1}^{k_1}{p_2}^{k_2}\cdots{p_m}^{k_m}} \\
    &= \sum_{k_1, k_2, \cdots, k_m = 0}^{\infty} \frac{1}{\prod_{i = 1}^{m} {p_i}^{k_i}} \\
    &= \sum_{n = 0}^{\infty} \frac{1}{n} \\
    &= \infty.
\end{align*}
$$
> As we encountered a contradiction, our initial assumption must be false.
> Therefore, there must be infinitely many prime numbers.
■

The second proof looks way more intimidating than the first one!
What is the fundamental theorem of arithmetic about?
What does it mean by a series diverging or converging?
Unless you are familiar with mathematics, it requires too much background knowledge in order to read the second proof.
At the end of the day, both proofs make the same point: there are infinitely many prime numbers.
For general audiences without any experience in university level of mathematics, the first proof might be a more adequate choice to explain the infinitude of the primes.

You might be wondering how this philosophical principle is applied to learning.
As a writer, I am obliged to expect the minimal possible requirements from the readers, ensuring that explanations are easy to follow for every topic.
On the other hand, you, as a reader, are strongly advised to not overcomplicate the literature you are reading.
For each topic, there is a reason that the topic is introduced in the text. Know the goal, and most importantly, try your best to understand and follow the logic.
Then try to find what and why you don't understand in order to ask questions.

## Art of Moving On

## Further Reading

* Abu-Mostafa, Y. S., Magdon-Ismail, M., & Lin, H.-T. (2012). *Learning From Data: A Short Course*. AML Book.
* Baker, A. (2016). Simplicity. In *Stanford Encyclopedia of Philosophy*. [https://plato.stanford.edu/entries/simplicity/](https://plato.stanford.edu/entries/simplicity/)
* Duignan, B. (2026). Occam’s razor. In *Encyclopedia Britannica*. [https://www.britannica.com/topic/Occams-razor](https://www.britannica.com/topic/Occams-razor)
* Euler, L. (1744). Variae observationes circa series infinitas. *Commentarii Academiae Scientiarum Imperialis Petropolitanae*, 9, 160–188.
* Mestrovic, R. (2012). Euclid’s theorem on the infinitude of primes: A historical survey of its proofs (300 B.C.--2022) and another new proof. *arXiv (Cornell University)*. [https://doi.org/10.48550/arxiv.1202.3670](https://doi.org/10.48550/arxiv.1202.3670)
* Zang, B. (2025, June 13). Is Occam’s razor valid? In *Encyclopedia Britannica*. [https://www.britannica.com/story/is-occams-razor-always-true](https://www.britannica.com/story/is-occams-razor-always-true)
