# Quantum Random Number Generator

Random numbers are used in various situations: dice rolling in gambling, world generation in video games, modern cryptography, making a tough decision, and so on.
Unfortunately, despite their importance and impact on our lives, classical computers are not capable of generating purely random numbers.
Instead, classical computers utilize pseudorandom algorithms to mimic the complete randomness.
There are several ways of implementing for different purposes; however, they are highly dependent on the initial condition at the time of generation, as known as the seed.

* (THE TYPICAL WAY OF GENERATING)
* (CLOUDFLARE'S CASE)
* (`getrandom()` IN C)
* (THE INITIAL CONDITION PROBLEM OF THEM)

There is a huge disadvantage in those pseudorandom algorithms.
Once the initial condition is known, anyone can recreate the identical output.
This vulnerability can be critical for data encryption since a hacker can access to the raw data once they obtain the information of the initial condition and the implemented algorithm.
Fortunately, we do not have to give up pure randomness in computing; we just need to deploy a different method of computing.
By leveraging quantum systems in quantum computing, we can simply achieve this by using a single quantum gate: Hadamard gate (\\(H\\)).

## Hadamard Gates On Stack

(TODO: MENTION UNIFORM RANDOMNESS.)

Let us give a quick look at the matrix form of Hadamard gate.
In terms of linear algebra, a Hadamard gate can be written as a \\(2 \times 2\\) matrix.

\\[
    H = \frac{1}{\sqrt{2}}
    \begin{bmatrix}
        1 & 1 \\\\
        1 & -1
    \end{bmatrix}
\\]

What can this matrix do in order to create truly random numbers?
As we mentioned in the previous sections, in quantum circuit model, each qubit of the circuit is initialized as \\(\left|0\right\rangle\\).
Let us consider the case where there is only one qubit on the circuit.
By placing a single Hadamard gate on that wire, we can transform the state from \\(\left|0\right\rangle\\) to something promising.

\\[
\begin{align*}
    H\left|0\right\rangle
    &= \frac{1}{\sqrt{2}}
    \begin{bmatrix}
        1 & 1 \\\\
        1 & -1
    \end{bmatrix}
    \begin{bmatrix} 1 \\\\ 0 \end{bmatrix} \\\\
    &= \frac{1}{\sqrt{2}}
    \begin{bmatrix} 1 \\\\ 1 \end{bmatrix} \\\\
    &= \frac{1}{\sqrt{2}} \left(
    \begin{bmatrix} 1 \\\\ 0 \end{bmatrix} +
    \begin{bmatrix} 0 \\\\ 1 \end{bmatrix}
    \right) \\\\
    &= \frac{1}{\sqrt{2}}\left|0\right\rangle + \frac{1}{\sqrt{2}}\left|1\right\rangle
    = \left|+\right\rangle
\end{align*}
\\]

As we can clearly see, the state is now in superposition of \\(\left|0\right\rangle\\) and \\(\left|1\right\rangle\\).
Now, let us look at what happens if we measure this quantum state.
We are interested in the coefficients in front of \\(\left|0\right\rangle\\) and \\(\left|1\right\rangle\\) since they are the probability amplitudes.
Since we are measuring in computational bases (i.e., \\(0\\) and \\(1\\)), to find the probability of obtaining a particular basis, we take the corresponding probability amplitudes, find its modulus, and square it.
Therefore, we have \\(\left|\frac{1}{\sqrt{2}}\right|^2 = \frac{1}{2} = 50\\%\\) chance of measuring \\(0\\), and likewise, we have \\(\left|\frac{1}{\sqrt{2}}\right|^2 = \frac{1}{2} = 50\\%\\) chance of measuring \\(1\\).
By simply placing a Hadamard gate on the circuit and measuring the qubit, the circuit now acts as a quantum coin flipper!

However, this single-qubit circuit alone is not powerful enough to generate any meaningful random numbers.
In order to address this, we must expand our current circuit to a multi-qubit system.
Intuitively, we can locate Hadamard gates on each qubit wires as we add to the circuit.
As we place \\(n\\) Hadamard gates in parallel, we can describe the entire gate with a single matrix using Kronecker product.

\\[
    H^{\otimes n}
    = H \otimes H \otimes \cdots \otimes H
    = \bigotimes_{i=1}^n H
\\]

Here, we are putting the Kronecker product sign (\\(\otimes\\)) in the superscript to indicate that we are repeating the Kronecker product \\(n\\) times, not a regular matrix multiplication.
Equivalently, we can use a recursive definition for \\(n > 1\\).
The equivalence of these two different definitions can be trivially shown using how Kronecker product operates.

\\[
    H^{\otimes n} =
    \begin{cases}
        H & n = 1 \\\\
        \cfrac{1}{\sqrt{2}}
        \begin{bmatrix}
            H^{\otimes (n-1)} & H^{\otimes (n-1)} \\\\
            H^{\otimes (n-1)} & -H^{\otimes (n-1)}
        \end{bmatrix}
        & n > 1
    \end{cases}
\\]

(INTRODUCTION PARAGRAPH FOR THE PROOF)

> **Proof**: Let us denote the state obtained after applying Hadamard gates to \\(n\\) quits by \\(\left|\psi_n\right\rangle\\), i.e., \\(\left|\psi_n\right\rangle = \otimes_{i=1}^{n} H\left|0\right\rangle = (H\left|0\right\rangle)^{\otimes n}\\).
> We also let the claim \\(P(n)\\) be \\(\left|\psi_n\right\rangle\\) can generate a uniformly random \\(n\\)-bit binary string.
> (BASE CASE)
> Assume \\(P(k)\\) holds for an arbitrary \\(k \in \mathbb{N}\\), meaning that \\(\left|\psi\right\rangle = (H\left|0\right\rangle)^{\otimes n}\\) generates a uniformly random \\(k\\)-bit string.
> Now, append another qubit initialized in \\(\left|0\right\rangle\\) and apply a Hadamard gate to it.
> The resulting \\((k+1)\\)-bit string is:
> \\[
\begin{align*}
    \left|\psi_{k+1}\right\rangle
    &= (H\left|0\right\rangle)^{\otimes k} \otimes H\left|0\right\rangle \\\\
    &= (H\left|0\right\rangle)^{\otimes k} \otimes \left(\frac{1}{\sqrt{2}} \left|0\right\rangle + \frac{1}{\sqrt{2}} \left|1\right\rangle\right) \\\\
    &= \frac{1}{\sqrt{2}} (H\left|0\right\rangle)^{\otimes k} \otimes \left|0\right\rangle + \frac{1}{\sqrt{2}} (H\left|0\right\rangle)^{\otimes k} \otimes \left|1\right\rangle \text{.} \\\\
\end{align*}
> \\]
> Since the new qubit has an equal probability of being measured as \\(0\\) or \\(1\\), the state \\(\psi_{k+1}\\) successfully generates a uniformly random \\((k+1)\\)-bit binary string.
> By mathematical induction, we conclude that any number \\(n\\) of qubits prepared with parallel hadamard gates can generate uniformly random \\(n\\)-bit binary strings.

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

* https://www.cloudflare.com/learning/ssl/lava-lamp-encryption/
* https://www.man7.org/linux/man-pages/man2/getrandom.2.html
