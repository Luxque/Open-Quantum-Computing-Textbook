# Quantum Random Number Generator

Random numbers are used in various situations: dice rolling in gambling, world generation in video games, securing data encryption, making a tough decision, and so on.
Unfortunately, despite their importance and impact on our lives, classical computers are not capable of generating purely random numbers.
Instead, classical computers utilize pseudorandom algorithms to mimic the complete randomness.
There are several ways of implementing for different purposes; however, they are highly dependent on the initial condition at the time of generation, as known as the seed.

* (The typical way of generating)
* (Cloudflare's case)
* (`getrandom()` in C)
* (The similarity between them)

There is a huge disadvantage in those pseudorandom algorithms.
Once the initial condition is known, anyone can recreate the identical output.
This loophole can be critical for cryptography as a hacker can access to the raw data once they obtain the information of the initial condition and the implemented algorithm.
Fortunately, we do not have to give up pure randomness in computing; we just need to deploy a different method of computing.
In quantum computing, we can simply achieve this by using a single gate: Hadamard gate (\\(H\\)).

## Hadamard Gates on Stack

\\[
    H = \frac{1}{\sqrt{2}}
    \begin{bmatrix}
        1 & 1 \\\\
        1 & -1
    \end{bmatrix}
\\]

## Generating Random Integers

* (Determining the number of qubits for a given range)
* ()

## Generating Random Floating-Point Numbers

## Quantum Buffon's Needle Problem

## Further Reading

* https://www.cloudflare.com/learning/ssl/lava-lamp-encryption/
* https://www.man7.org/linux/man-pages/man2/getrandom.2.html
