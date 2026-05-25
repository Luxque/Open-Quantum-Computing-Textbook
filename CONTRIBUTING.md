# Contributing

## Document Description

This document explains how the *Open Quantum Computing Textbook* project is structured and what conventions are used.
Please read and consult the following sections before making any contribution.
It is recommended clone this repository and open via VSCode or VSCodium for the optimized formatting.
Thank you so much for your consideration in contributing to this project.

## Generative AI Policy

**Please refrain from using generative AI, especially large language models (LLMs), to generate book content from scratch.**
A contributor may utilize LLMs to check grammatical errors and polish their writings; however, the original text must be solely written and thoroughly reviewed by a human before submitting a pull request to this project.
Any contribution attempts and/or pull requests with an apparent use of generative AI will be rejected.

## Getting Started

This textbook uses `mdBook` for converting Markdown documents to HTML files and `MANIM` for animating demonstration videos.
Before proceeding, please make sure that you installed Git, Cargo, and Python (version 3 or later) installed on your local machine.

### Installing `mdBook`

In `mdBook`, mathematical expressions are rendered by MathJax, which does not support some formatting commands required by the textbook, making $\KaTeX$ a better option.
In order to render $\KaTeX$ typeset with `mdBook`, a preprocessor `mdBook-KaTeX` is required.
For the current standpoint, however, `mdBook-KaTeX` supports `mdBook` up to the version `0.4.48`.

```bash
cargo install mdbook --version 0.4.48
cargo install mdbook-katex
```

### Installing `MANIM`

Please consult the official [MANIM communiity documentation](https://docs.manim.community/en/stable/installation/uv.html).

### Installing Other Python Packages

The following commands create a Python virtual environment in the cloned project directory and install the following packages.

* `qiskit`
* `qiskit-ibm-runtime`
* `qiskit-aer`
* `tabulate`

#### Bash

```bash
python3 -m venv .venv
source ./.venv/bin/activate
pip install qiskit qiskit-ibm-runtime qiskit-aer tabulate
```

#### Powershell

```ps
python3 -m venv venv
.\venv\script\activate
pip install qiskit qiskit-ibm-runtime qiskit-aer
```

## Contributing Methods

There are various ways to contribute to this project.
If you would like to get your work acknowledged, you are more than welcome to add your GitHub handle and/or your name in [`acknowledgements.md`](https://github.com/Luxque/Open-Quantum-Computing-Textbook/tree/main/text/eng/source/intro/acknowledgements.md) in the chapter 1 directory before submitting a pull request.
Any kinds of contributions are highly appreciated.

### Content

Are you a researcher or in possess of knowledge that can be applied to quantum computing and quantum technology?
You are more than welcome to suggest ideas in [Ideas](https://github.com/Luxque/Open-Quantum-Computing-Textbook/discussions/categories/ideas) of the discussion tab or get your additional contents merged to the main branch by filing a [pull request](https://github.com/Luxque/Open-Quantum-Computing-Textbook/pulls).

### Review

Educational content must be easy to comprehend, but it must never be misleading.
Any errors such as simple typos, misused terms, and incorrect explanations should be reported in the [Issues](https://github.com/Luxque/Open-Quantum-Computing-Textbook/issues) tab, or if the errors are fixed on your end, then you can submit a [pull request](https://github.com/Luxque/Open-Quantum-Computing-Textbook/pulls).
For security issues, please consult the [security](./SECURITY.md) documentation.

### Translation

Academic translation plays a vital role in knowledge democratization, especially for a sophisticated topic like quantum computing.
Please follow the [Language Code](./CONTRIBUTING.md#language-code) when creating a branch from this repository.

### Donation

Despite the fact that this project is freely available, some academic resources are not offered free.
You can financially support this project and help the author legally access those materials.
Please consult the [donation](./DONATION.md) documentation if you are considering donating to this project.

## Project Conventions

There are a few conventions in the interest of clarity and manageability of this project.
A contributor is advised to consult and follow the following conventions.

### Chapter Code

For each chapter in the textbook, there is a corressponding code.
The chapter code is used for naming branches and directories.

|                Chapter                |    Code     |
|:-------------------------------------:|:-----------:|
|             Introduction              |   `intro`   |
|       Foundational Mathematics        | `foundmath` |
|     Foundational Computer Science     |  `foundcs`  |
|     Foundational Quantum Physics      |  `foundqp`  |
|    Foundational Quantum Computing     |  `foundqc`  |
|         Advanced Mathematics          |  `advmath`  |
|       Advanced Computer Science       |   `advcs`   |
|       Advanced Quantum Physics        |   `advqp`   |
|         Quantum Optimization          |    `opt`    |
|       Quantum Machine Learning        |    `ml`     |
| Quantum Error Correction & Mitigation |   `error`   |
|  Quantum Networking & Communication   |  `netcomm`  |
|     Quantum Programming Languages     |  `prolang`  |
|     Quantum Software Verification     |  `softver`  |
|           Quantum Chemistry           |   `chem`    |
|            Quantum Finance            |    `fin`    |
|          Quantum Music & Art          |  `musart`   |
|     Topological Quantum Computing     |    `tqc`    |
|  Implementation of Quantum Computers  |   `imple`   |
|      Ethics of Quantum Computing      |  `ethics`   |
|            Now and Beyond             |  `beyond`   |

### Language Code

Languages are classified and named under the ISO 639-3 standard by default.
If identical languages must be distinguished by different writing systems, they can be differentiated by the ISO 15924 code, followed by a hyphen (`-`).
For instance, English texts are always written with Latin alphabets, so the code for English is `eng`.
On the other hand, the code for Simplified Chinese is `cmn-Hans` while traditional Chinese is `cmn-Hant`.

|  Language  |      Writing System       |    Code    |
|:----------:|:-------------------------:|:----------:|
|  English   |           Latin           |   `eng`    |
|   Arabic   |          Arabic           |   `arb`    |
|  Chinese   |      Simplified Han       | `cmn-Hans` |
|  Chinese   |      Traditional Han      | `cmn-Hant` |
|   French   |           Latin           |   `fra`    |
|  Japanese  | Hiragana + Katakana + Han |   `jpn`    |
|   Korean   |          Hangul           | `kor-Hang` |
|   Korean   |       Hangul + Han        | `kor-Kore` |
|  Russian   |         Cyrillic          |   `rus`    |

### Branch Convention

Each book chapter is managed under different branches and pulled by the main branch after an update.
Chapter branches are named in this syntax: `<language-code>-<chapter-code>`.
For example, a branch for the 'Topological Quantum Computing' chapter written in French is `fra-tqc`.

### Hierarchy of Book Contents

1. Part
2. Chapter
3. Module
4. Section
5. Subsection

## Philosophy of Writing

### Open Source

### Intuition and Rigor

### Examples and Counterexamples

### Visualization

## Notes on Formatting

This is a note for the main author on formatting of this text.
The contributors are not obliged to follow the conventions listed below.
Any contributions will be reviewed and edited on behalf of the following formatting conventions by the main author.

### Sentences and Paragraphs

In Markdown, every sentence marked its end by a period must be separated by a newline.
This makes Markdown environment less runny and easier to find errors.
When the context within a paragraph shifts, it is better to give another newline to separate different topics into two different paragraphs.
In a single paragraph, try not to exceed five sentences to preserve legibility.

### Inline Mode and Display Mode

When a mathematical expression is written in a sentence, it is in inline mode, and when a mathematical expression is written outside a sentence, it is in display mode.
Mathematical expressions written in display mode can be as large as it can be, but not in the inline mode due to the spacing between sentence lines.

### Subscripts and Superscripts

It can depend on context, but when a subscript denotes an indexing and a superscript represents the power of a variable, 
For example, let a vector $\textbf{v} = \ket{v} \in \mathbb{R}^n$ and $v_i$ denotes its $i$-th real-valued component.
Then the way of finding the norm of the vector $\textbf{v}$ should be written as the following.

$$
\begin{align*}
    \left\|\textbf{v}\right\|
    &= \sqrt{\Braket{v | v}} \\
    &= \sqrt{\sum_{i=1}^{n} {v_i}^2} \\
    &= \sqrt{{v_1}^2 + {v_2}^2 + \cdots + {v_n}^2} \\
\end{align*}
$$

```latex
$$
\begin{align*}
    \left\|\textbf{v}\right\|
    &= \sqrt{\Braket{v | v}} \\
    &= \sqrt{\sum_{i=1}^{n} {v_i}^2} \\
    &= \sqrt{{v_1}^2 + {v_2}^2 + \cdots + {v_n}^2} \\
\end{align*}
$$
```

### Vectors and Matrices

Any vectors or matrices with strictly less than four row and column entries can be written in the inline mode and as a single line in the math mode.
If they are larger than this constraint, they must be written in the display mode, separated by newlines for every row.
For example, while a Hadamard gate can be written in a sentence $\operatorname{H} = \frac{1}{\sqrt{2}} \left[\begin{smallmatrix} 1 & 1 \\ 1 & -1 \end{smallmatrix}\right]$, a CNOT gate should be written as the following.

$$
\begin{align*}
    \operatorname{CNOT}
    &= \begin{bmatrix}
        1 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1 \\
        0 & 0 & 1 & 0
    \end{bmatrix}
\end{align*}
$$

```latex
$$
\begin{align*}
    \operatorname{CNOT}
    &= \begin{bmatrix}
        1 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1 \\
        0 & 0 & 1 & 0
    \end{bmatrix}
\end{align*}
$$
```

### Differential Forms

When typing a differential form in $\LaTeX$, make sure to use the `\text{}` command on $\text{d}$ to avoid the confusion.
Here, $dx$ stands for quantity $d$ multiplied by $x$, and $\text{d}x$ stands for differential form of variable $x$.
To provide extra clarity, it is advised to put the `\,` command before the differential form whenever it is multiplied by a different variable.
Let's say we are rendering the following evaluation of Gaussian integral.

$$
\begin{align*}
    \int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x
    &= \sqrt{\left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right)^2} \\
    &= \sqrt{\left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right) \left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right)} \\
    &= \sqrt{\left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right) \left(\int_{-\infty}^{\infty} e^{-y^2} \,\text{d}y\right)} \\
    &= \sqrt{\int_{-\infty}^{\infty}\int_{-\infty}^{\infty} e^{-\left(x^2+y^2\right)} \,\text{d}x \,\text{d}y} \\
    &= \sqrt{\int_{0}^{2\pi} \int_{0}^{\infty} e^{-r^2}r \,\text{d}r \,\text{d}\theta} \\
    &= \sqrt{\int_{0}^{2\pi} \left[-\frac{1}{2}e^{-r^2}\right]_{r=0}^{r=\infty} \,\text{d}\theta} \\
    &= \sqrt{\frac{1}{2} \int_{0}^{2\pi} \text{d}\theta} \\
    &= \sqrt{\frac{1}{2} \left[\theta\right]_{0}^{2\pi}} \\
    &= \sqrt{\pi}
\end{align*}
$$

```latex
$$
\begin{align*}
    \int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x
    &= \sqrt{\left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right)^2} \\
    &= \sqrt{\left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right) \left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right)} \\
    &= \sqrt{\left(\int_{-\infty}^{\infty} e^{-x^2} \,\text{d}x\right) \left(\int_{-\infty}^{\infty} e^{-y^2} \,\text{d}y\right)} \\
    &= \sqrt{\int_{-\infty}^{\infty}\int_{-\infty}^{\infty} e^{-\left(x^2+y^2\right)} \,\text{d}x \,\text{d}y} \\
    &= \sqrt{\int_{0}^{2\pi} \int_{0}^{\infty} e^{-r^2}r \,\text{d}r \,\text{d}\theta} \\
    &= \sqrt{\int_{0}^{2\pi} \left[-\frac{1}{2}e^{-r^2}\right]_{r=0}^{r=\infty} \,\text{d}\theta} \\
    &= \sqrt{\frac{1}{2} \int_{0}^{2\pi} \text{d}\theta} \\
    &= \sqrt{\frac{1}{2} \left[\theta\right]_{0}^{2\pi}} \\
    &= \sqrt{\pi}
\end{align*}
$$
```

### Differential Notations

The same rule is applied to differential notations as well.
For Leibniz notation, the $\text{d}$'s should be encapsulated by `\text{}`: $\frac{\text{d}}{\text{d}x}$.
When multiple differential forms are placed consecutively, especially the case for partial differentiation, those should be separated by `\,` command: $\frac{\partial^2}{\partial{x} \,\partial{y}}$.
For Largrangian notation, when there must be more than three primes, use $f^{(n)}$ instead, where $n$ stands for the number of differentiations on the function $f$.
As an example, a Taylor expansion of a smooth function $f(x)$ at $x = a$ can be written as the following.

$$
\begin{align*}
    T_f(a)
    &= \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n \\
    &= f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2 + \frac{f'''(a)}{6}(x-a)^3 + \frac{f^{(4)}(a)}{24}(x-a)^4 + \cdots \\
\end{align*}
$$

```latex
$$
\begin{align*}
    T_f(a)
    &= \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n \\
    &= f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2 + \frac{f'''(a)}{6}(x-a)^3 + \frac{f^{(4)}(a)}{24}(x-a)^4 + \cdots \\
\end{align*}
$$
```
