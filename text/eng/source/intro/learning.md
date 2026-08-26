# Learning and Thinking

This section explores several learning and thinking practices you may find beneficial in the course of reading this text.
In STEM (science, technology, engineering, & mathematics), especially the one as sophisticated as quantum computing, requires strong resilience, critical thinking, and problem-solving skills.
One may gain these skill sets subconsciously as they advance while others may not. 
So I would recommend you to at least skim it through before beginning the quantum computing journey.
Of course, there might be a chance that the advice does not apply on your behalf, so please take it with a grain of salt.

## Positive Attitude

## Focus Time

(Pomodoro technique)

## Asking Questions

> There are naïve questions, tedious questions, ill-phrased questions, questions put after inadequate self-criticism.
> But every question is a cry to understand the world.
> There is no such thing as a dumb question.
>
> — *The Demon-Haunted World: Science as a Candle in the Dark* by Carl Sagan

## Learning by Doing

1. Trying exercise problems
2. Implementing algorithms on code

## Occam's Razor

> Pluralitas non est ponenda sine necessitate.
>
> Plurality should not be posited without necessity.
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
Since the age of Euclid, numerous mathematicians have proposed different proofs for this mathematical fact.
Here, I give you two of them.
I don't expect you to understand everything from these proofs, but I hope you can at least tell which one reads better for you.

> **Proof 1**:
> Suppose there are finitely many prime numbers.
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
> Just like the previous proof, we initially assume there are finitely many prime numbers.
> Let us recall the following facts:
>
> * By the fundamental theorem of arithmetic, for any natural number $n > 1$, we have a unique prime factorization such that $n = {p_1}^{k_1}{p_2}^{k_2}\cdots{p_m}^{k_m} = \prod_{i = 1}^{m} {p_i}^{k_i}$;
> * The harmonic series diverges: $\sum_{i = 1}^{\infty} \frac{1}{i} = \infty$; and
> * If $|r| < 1$, then this geometric series converges: $\sum_{i = 0}^{\infty} r^i = \frac{1}{1 - r}$.
> 
> Let us denote the prime numbers as $p_1$, $p_2$, $\cdots$, $p_m$.
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
    &= \sum_{k_1 = 0}^{\infty} \sum_{k_2 = 0}^{\infty} \cdots \sum_{k_m = 0}^{\infty} \frac{1}{{p_1}^{k_1}{p_2}^{k_2}\cdots{p_m}^{k_m}} \\
    &= \sum_{k_1, k_2, \cdots, k_m = 0}^{\infty} \frac{1}{\prod_{i = 1}^{m} {p_i}^{k_i}} \\
    &= \sum_{n = 1}^{\infty} \frac{1}{n} \\
    &= \infty.
\end{align*}
$$
> As we encountered a contradiction, our initial assumption must be false.
> Therefore, there must be infinitely many prime numbers.
■

The second proof looks way more intimidating than the first one!
What is the fundamental theorem of arithmetic about?
What does it mean by a series diverging or converging?
What about those pesky $\sum$ and $\prod$ symbols?
At the end of the day, both proofs are valid and make the same point: there are infinitely many prime numbers.
But it requires too much background knowledge in order to read the second proof unless you are familiar with mathematics.
Therefoere, for general audiences without any experience in university level of mathematics, the first proof might be a more adequate choice to explain the infinitude of the primes.

You might be wondering how this philosophical principle is applied to learning.
As a writer, I am obliged to expect the minimal possible requirements from the readers, ensuring that explanations are easy to follow for every topic.
On the other hand, you, as a reader, are strongly advised to not overcomplicate the literature you are reading.
For each topic, there is a reason that the topic is introduced in the text. Know the goal, and most importantly, try your best to understand and follow the logic.
Then try to find what and why you don't understand in order to ask questions.

## Critical Thinking

(Doubting)

## Thinking Outside the Box

(Unleashing creativity)

## Divide and Conquer

Originally, the term 'divide and conquer (divide et impera)' was used in politics.
It refers to a strategy that allows an entity to take control over other entities by imposing political division.
We can also observe this kind of interaction in different disciplines, such as history, legal theory, economics, and even our daily lives.
In order to dominate the enemy, we have to divide them until we can handle it with ease.

And in terms of problem-solving, those challenging-looking problems will be your enemies.
Indeed, the divide and conquer tactic can be applied as a problem-solving technique. 
In fact, it is an actual approach to gain algorithmic solutions to problems studied in computer science.
A typical divide and conquer algorithm proceeds like this:

1. Break the problem into smaller and similar instances;
2. Solve these subproblems; and
3. Combine their answers appropriately.

Just like setting up a plan before proceeding to a heavy task, you will have to break the problem down (not necessarily similar instances as in the computer science formalism above).
The point is to make the problem into more manageable pieces.
There might be a chance of finding subproblems is not apparent.
Even if that is the case, you should play with the problem and the related concepts for a while to establish patterns that might be useful to solve the problem.

## Art of Moving On

On occasion in our lives, we get stuck on a thing.
It can be a problem you are trying to solve, or it can be one concept you are trying to grasp. 
You might seek more inspiration to tackle the problem, and you might need a brilliant new perspective to analyze the concept.
Despite your continued effort, you made almost no progress; eventually, your time and patience run out.
Before you choose to give up learning what you want, let me give you advice for you. 
If you truly believe you gave at least one attempt at every methodology you could come up with but still failed to reach your goal, you should move away from it and do something else.
You can always come back later.

You might be wondering what exactly you should do.
You can take a light walk, you can finish house chores that you are supposed to do after the study session, and you can even check your phone for a brief period.
Moving on sounds like you are losing focus, but it actually serves two purposes.
One is you can give your brain a rest to get refreshed.
The other one is, by doing something different, you can get inspired by different approaches towards your goal, sparking a potential incubation effect.
Once you can come up with a new approach, return to your desk as soon as possible to give it a try.
Keep in mind: an unexpected solution may appear in unexpected places, and if something gets exhausted, it will just show weaker performance, whether it is a human or a machine.

Also, reading the next page ahead may help you in a way.
It might sound counterintuitive since fields like STEM require a strong understanding of previously mentioned materials.
In fact, our brains are not designed for abstract ideas but pattern-seeking.
For instance, when an abstract definition is given out of context, it is likely that your brain gets intimidated by it.
By reading the next page, you can see more examples of what kind of object falls under the definition and how it is applied to solve a problem.
In essence, you are allowing your brain to find and recognize the pattern.
However, this method is not recommended when you skip too many materials already because filling the gap would not be durable at that point; you rather need to ask others for help.
Let the aha moments be with you.

## Further Reading
