# Quantum Random Number Generator

Random numbers are used in various situations: dice rolling in gambling, world generation in video games, modern cryptography, making a tough decision, etc.
Unfortunately, despite their importance and impact on our lives, classical computers are not capable of generating purely random numbers.
Instead, classical computers utilize pseudorandom algorithms to mimic complete randomness.
There are several ways of implementing for different purposes.
However, they are highly dependent on the initial condition at the time of generation, as known as the seed.
Consider the following Python code snippet.

```python
import random

def random_cast():
    return random.randrange(6) + 1

print(f"Roll Result: {random_roll()}")
```

In this example, we are simulating casting a die.
A typical die has 6 sides, and each side has an equal probability of $\frac{1}{6}$ as a outcome.
In Python, we can use `random` module to generate a random number, and `randrange(6)` returns a random integer from $0$ to $5$.
We have to make sure that adding $1$ at the end to get numbers from $1$ to $6$.
This module offers several other functions for randomized activities on various data structures.
But if you were to work with something secret, this is not a right to use; introducing the `secrets` module.

```python
import secrets

def secrets_roll():
    return secrets.randbelow(6) + 1

print(f"Roll Result: {secrets_roll()}")
```

While both `random` and `secrets` offer similar features, they obtain 'randomness' from completely different sources.
The `random` module uses Mersenne Twister, an algorithm based on the period length between Mersenne primes.
Once the period is known, the results becomes very recreatable, so `random` is usually used for simulation.
On the other hand, the `secrets` module is directly seeded with devices that handles entropy (a quantity associated with uncertainty), which is way more sophisticated than the previous one.
In Linux systems, `/dev/urandom` is used, and in C programming, the `getrandom()` function can be used for similar purposes.
These are great options for creating cryptographically safe random numbers.

* (CLOUDFLARE'S CASE)
(Chaotic nature of liquid)
(Fundamental identical behaviors: seed)
(Deterministic)
(Not fully random)

There is a huge and shared disadvantage in those pseudorandom algorithms.
Once the initial condition is known, anyone can recreate the identical output.
This vulnerability can be critical for data encryption since a hacker can access to the raw data once they obtain the information of the initial condition and the implemented algorithm.
Fortunately, we do not have to give up pure randomness in computing; we just need to deploy a different method of computing.
By leveraging the completely random nature of quantum systems, we can simply achieve this by using a single quantum gate: Hadamard gate ($H$).

## Hadamard Gates On Stack

(MENTION UNIFORM RANDOMNESS.)

Let us give a quick look at the matrix form of Hadamard gate.
In terms of linear algebra, a Hadamard gate can be written as a $2 \times 2$ matrix.

$$
\begin{equation}
    H = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix}
\end{equation}
$$

What can this matrix do in order to create truly random numbers?
As we mentioned in the previous sections, in quantum circuit model, each qubit of the circuit is initialized as $\ket{0}$.
Let us consider the case where there is only one qubit on the circuit.
By placing a single Hadamard gate on that wire, we can transform the state from $\Ket{0}$ to something promising.

$$
\begin{align*}
    H\Ket{0}
    &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & 1 \\ 1 & -1 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \end{bmatrix} \\
    &= \frac{1}{\sqrt{2}} \begin{bmatrix} 1 \\ 1 \end{bmatrix} \\
    &= \frac{1}{\sqrt{2}} \left(\begin{bmatrix} 1 \\ 0 \end{bmatrix} + \begin{bmatrix} 0 \\ 1 \end{bmatrix} \right) \\
    &= \frac{1}{\sqrt{2}}\Ket{0} + \frac{1}{\sqrt{2}}\Ket{1}
    = \Ket{+}
\end{align*}
$$

As we can clearly see, the state is now in superposition of $\ket{0}$ and $\ket{1}$.
Now, let us look at what happens if we measure this quantum state.
We are interested in the coefficients in front of $\ket{0}$ and $\ket{1}$ since they are the probability amplitudes.
Since we are measuring in computational bases (i.e., $0$ and $1$), to find the probability of obtaining a particular basis, we take the corresponding probability amplitudes, find its modulus, and square it.
Therefore, we have $|\frac{1}{\sqrt{2}}|^2 = \frac{1}{2} = 50\%$ chance of measuring $0$, and likewise, we have $|\frac{1}{\sqrt{2}}|^2 = \frac{1}{2} = 50\%$ chance of measuring $1$.
By simply placing a Hadamard gate on the circuit and measuring the qubit, the circuit now acts as a quantum coin flipper!

However, this single-qubit circuit alone is not powerful enough to generate any meaningful random numbers.
In order to address this, we must expand our current circuit to a multi-qubit system.
Intuitively, we can locate Hadamard gates on each qubit wires as we add to the circuit.
As we place $n$ Hadamard gates in parallel, we can describe the entire gate with a single matrix using Kronecker product.

$$
\begin{equation}
    H^{\otimes n}
    = \underbrace{H \otimes H \otimes \cdots \otimes H}_{\text{$n$ times}}
    = \bigotimes_{i=1}^n H
\end{equation}
$$

Here, we are putting the Kronecker product sign ($\otimes$) in the superscript to indicate that we are repeating the Kronecker product $n$ times, not a regular matrix multiplication.
Equivalently, we can use a recursive definition for $n > 1$.
The equivalence of these two different definitions can be trivially shown using how Kronecker product operates.

$$
\begin{equation}
    H^{\otimes n} =
    \begin{cases}
        H & n = 1 \\
        \cfrac{1}{\sqrt{2}} \begin{bmatrix} H^{\otimes (n-1)} & H^{\otimes (n-1)} \\ H^{\otimes (n-1)} & -H^{\otimes (n-1)} \end{bmatrix} & n > 1
    \end{cases}
\end{equation}
$$

(INTRODUCTION PARAGRAPH FOR THE PROOF)

> **Proof**: Let us denote the state obtained after applying Hadamard gates to $n$ quits by $\ket{\psi_n}$, i.e., $\ket{\psi_n} = \otimes_{i=1}^{n} H\ket{0} = \left(H\ket{0}\right)^{\otimes n}$.
> We also let the claim $P(n)$ be $\ket{\psi_n}$ can generate a uniformly random $n$-bit binary string.
> (BASE CASE)
> Assume $P(k)$ holds for an arbitrary $k \in \mathbb{N}$, meaning that $\ket{\psi} = (H\ket{0})^{\otimes n}$ generates a uniformly random $k$-bit string.
> Now, append another qubit initialized in $\ket{0}$ and apply a Hadamard gate to it.
> The resulting $k+1$-bit string is:
$$
\begin{align*}
    \Ket{\psi_{k+1}}
    &= (H\Ket{0})^{\otimes k} \otimes H\Ket{0} \\
    &= (H\Ket{0})^{\otimes k} \otimes \left(\frac{1}{\sqrt{2}} \Ket{0} + \frac{1}{\sqrt{2}} \Ket{1}\right) \\
    &= \frac{1}{\sqrt{2}} (H\Ket{0})^{\otimes k} \otimes \Ket{0} + \frac{1}{\sqrt{2}} (H\Ket{0})^{\otimes k} \otimes \Ket{1} \text{.}
\end{align*}
$$
> Since the new qubit has an equal probability of being measured as $0$ or $1$, the state $\ket{\psi_{k+1}}$ successfully generates a uniformly random $(k+1)$-bit binary string.
> By mathematical induction, we conclude that any number $n$ of qubits prepared with parallel hadamard gates can generate uniformly random $n$-bit binary strings.

(POSSIBLE CANDIDATES BY USING BLOCH SPHERE)
Hadamard gate plays vital roles in other quantum algorithms, which will be soon revealed in later sections of this chapter.

## Generating Random Integers

* (DETERMINING THE NUMBER OF QUBITS FOR A GIVEN RANGE)
* (CONVERTING THE MEASUREMENT RESULT INTO AN INTEGER)

## Generating Random Floating-Point Numbers

* (DETERMINING THE NUMBER OF QUBITS FOR A GIVEN RANGE)
* (CONVERTING THE MEASUREMENT RESULT INTO A FLOATING-POINT NUMBER)

## Quantum Password Generator

* (INTRODUCTION TO THE PROBLEM)
* (QISKIT CODE)
* (POSSIBLE VULNERABILITY)

## Quantum Buffon's Needle Problem

* (INTRODUCTION TO THE PROBLEM)
    * (A FUN ACTIVITY TO DO)
    * (NOT REALLY A USEFUL THING IN QUANTUM COMPUTING)
* (DERIVATION OF \\(\hat{\pi}\\))
    * (A WARNING FOR THE INTEGRAL CALCULUS AND PROBABILITY)
* (QISKIT CODE)
* (RESULT AND CONCLUSION PARAGRAPH)

## Further Reading

* https://docs.python.org/3.13/library/random.html
* https://dl.acm.org/doi/pdf/10.1145/272991.272995
* https://docs.python.org/3.13/library/secrets.html#module-secrets
* https://linuxvox.com/blog/dev-urandom-linux/
* https://www.man7.org/linux/man-pages/man2/getrandom.2.html
* https://www.cloudflare.com/learning/ssl/lava-lamp-encryption/
* https://www.random.org/randomness/
