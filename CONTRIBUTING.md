# Contributing

## Document Description

This document explains how the *Open Quantum Computing Textbook* project is structured and what conventions are used.
Please read and consult the following sections before making any contribution.
It is recommended clone this repository and open via [VS Code](https://code.visualstudio.com/) or [VSCodium](https://vscodium.com/) for the optimized formatting.
Thank you so much for your consideration in contributing to this project.

## Generative AI Policy

**Please refrain from using generative AI, especially large language models (LLMs), to generate book content from scratch.**
A contributor may utilize LLMs to check grammatical errors and polish their writings; however, the original text must be solely written and thoroughly reviewed by a human before submitting a pull request to this project.
Any contribution attempts and/or pull requests with an apparent use of generative AI will be rejected.
Utilizing generative AI for spamming comments and issues may result in a permanent ban.

## Contributing Methods

There are various ways to contribute to this project.
If you would like to get your work acknowledged, you are more than welcome to add your GitHub handle and/or your name in [`acknowledgements.md`](https://github.com/Luxque/Open-Quantum-Computing-Textbook/tree/main/text/eng/source/intro/acknowledgements.md) in the Chapter 1 (Introduction) directory before submitting a pull request.
Any kinds of contributions are highly appreciated.

### Content

Are you a researcher or in possess of knowledge that can be applied to quantum computing and quantum technology?
You are more than welcome to suggest ideas in [Ideas](https://github.com/Luxque/Open-Quantum-Computing-Textbook/discussions/categories/ideas) of the [Discussions](https://github.com/Luxque/Open-Quantum-Computing-Textbook/discussions) tab or get your additional contents merged to the main branch by filing a [pull request](https://github.com/Luxque/Open-Quantum-Computing-Textbook/pulls).

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

## Getting Started

This textbook uses mdBook for converting Markdown documents to HTML files and Manim for animating demonstration videos.
Before proceeding, please make sure that you installed basic development tools like Git installed on your local machine.
Since the command lines are based on Linux (mainly Ubuntu), users of different platforms should convert those commands to the corresponding platform or consult the official documentation of each tool.

### Installing Cargo

[Cargo](https://doc.rust-lang.org/stable/cargo/) is a package manager of the Rust programming language.
The website version of the textbook is rendered by mdBook, which is written in Rust.
Cargo is essential for installing and managing the mdBook package and its preprocessors.

```bash
curl -sSf https://sh.rustup.rs | sh
```

### Installing mdBook

In [mdBook](https://rust-lang.github.io/mdBook/) and Preprocessors, mathematical expressions are rendered by MathJax, which does not support some formatting commands required by the textbook, making $\KaTeX$ a better option.
In order to render $\KaTeX$ typeset with mdBook, preprocessor `mdbook-katex` is required.
For showcasing algorithms written in multiple programming languages, preprocessor `mdbook-langtabs` is used.
You can install mdBook and both preprocessors can be installed by this command.

```bash
cargo install mdbook mdbook-katex mdbook-langtabs
```

### Installing UV

[UV](https://docs.astral.sh/uv/) is a package manager for the Python programming language, just like [pip](https://pypi.org/project/pip/), but much faster.
It is required by Manim, but you can see this tool to install different Python packages and manage virtual environments.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Installing Manim

[Manim](https://www.manim.community/) is a Python package that allows to animate and produce mathematical videos.
First, we have to install Python via UV.

```bash
uv python install
```

Before installing new packages using [APT](https://wiki.debian.org/AptCLI), we have to fetch and download package information by using this command.
You will need your computer password.

```bash
sudo apt update
```

We now install full $\TeX$ Live packages and dependencies for Manim.
Some packages are massive, so it may take some time.

```bash
sudo apt install texlive-full build-essential python3-dev libcairo2-dev libpango1.0-dev
```

The following commands initializes a local Python project directory called `manimations` and add Manim to that directory..

```bash
uv init manimations
cd manimations
uv add manim
```

If you want to check if Manim is installed properly, simply run this command.
It will render and play a Manim demonstration video, indicating a successful installation.

```bash
uv run manim checkhealth
```

You have to leave the `manimations` directory before installing other Python packages.

```bash
cd ..
```

### Installing Python Packages

Those Python packages besides Manim are used in project scrips and textbook demonstration source code.
We set up a virtual environment `.venv` by this command.

```bash
uv venv .venv
```

The new virtual environment can be activated by this command.
You will see `(.venv)` next to the username in the console.

```bash
source ./.venv/bin/activate
```

We now install the following Python packages while the virtual environment is activated.

* [`qiskit`](https://github.com/Qiskit/qiskit): Open source SDK for quantum computing managed by IBM.
* [`qiskit-ibm-runtime`](https://github.com/Qiskit/qiskit-ibm-runtime): Client for running quantum programs on IBM quantum computers.
* [`qiskit-aer`](https://github.com/Qiskit/qiskit-aer): Quantum circuit simulator from the Qiskit project.
* [`tabulate`](https://pypi.org/project/tabulate/): Python package for printing tabular data.

```bash
uv pip install qiskit qiskit-ibm-runtime qiskit-aer tabulate
```

You can run a textbook Python script by using this command.

```bash
uv run <python-script>
```

The virtual environment can simply be deactivated by this command.

```bash
deactivate
```

### Installing $\LaTeX$

For rendering figures and the PDF version of the textbook, [$\LaTeX$](https://www.latex-project.org/) is essential in the project stack.
If you did not install $\TeX$ Live while installing Manim, install the full package using this command.

```bash
sudo apt install texlive-full
```

On VS Code or VSCodium, go to the Extensions tab, and look for an extension called 'LaTeX Workshop'.
After installing it, open a $\TeX$ file, then you will see a $\TeX$ tab on the left and be able to build a $\LaTeX$ project by pressing the green play button.

<!-- ### Installing [Lean](https://lean-lang.org/) -->

<!-- ## Directory Structure

* [`figure/`](./figure/): Figures and videos for the textbook.
* [`script/`](./script/): Pieces of software that help project management and task automation.
* [`table/`](./table/): CSV files of tables used in the textbook.
* [`text/`](./text/): Main textbook Markdown files.
    * [`text/eng/`](./text/eng/) 👑: (American) English textbook files.
    *All translations must be based on this directory.* -->

<!-- ## Scripts

### `open.sh`

### `toc.sh` -->

<!-- ## Working Conventions

### Editing Book Text

### Editing Source Code

### Editing Figures

### Editing Animation

### Rendering the Book -->

## Project Conventions

There are a few conventions to follow in the interest of clarity and manageability of this project.
A contributor is advised to consult and comply with the following conventions.

### Chapter Code

For each chapter in the textbook, there is a corresponding chapter code.
The chapter code is used for naming branches and directories.
By using chapter code instead of chapter numbering, the chapter content files can reside where they are even if there is a change in ordering among chapters.

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
| Quantum Error Correction & Mitigation |  `cormit`   |
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

Natural languages are classified and named under the [ISO 639-3](https://en.wikipedia.org/wiki/ISO_639-3) standard by default.
If two or more identical languages must be distinguished by different writing systems, they can be differentiated by the [ISO 15924](https://en.wikipedia.org/wiki/ISO_15924) code, followed by a hyphen (`-`).
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

### Branch Name Convention

Each book chapter is managed under different branches and pulled by the main branch after an update.
Chapter branches are named in this syntax: `<language-code>-<chapter-code>`.
For example, a branch for Chapter 'Topological Quantum Computing' translated to French is `fra-tqc`.

### Hierarchy of Book Content

Since different books have different conventions, for clarity, the names of each rank for this book are stated and explained.
Part is for classifying chapters into four major categories, which is not mentioned frequently in the textbook.
Meanwhile, every chapter/module allocates a Markdown file to include at least one introductory paragraph and the table of contents of the chapter/module.
Each section also allocates one Markdown file and must include one paragraph summarizing the learning objectives of the section and corresponding reading material.
A term for a rank lower than subsection is not settled.
Examples of each rank are provided here.

1. **Part**: There are 4 parts in this book.
    * The Beginning of Quantum Computing
    * The Theory of Quantum Computing
    * The Application of Quantum Computing
    * The Future of Quantum Computing
2. **Chapter**: There are 7 chapters in Part *The Theory of Quantum Computing*.
    * Foundational Mathematics
    * Foundational Computer Science
    * Foundational Quantum Physics
    * Foundational Quantum Computing
    * Advanced Mathematics
    * Advanced Computer Science
    * Advanced Quantum Physics
3. **Module**: There are 3 modules in Chapter *Introduction*.
    * About This Book
    * Getting Started
    * Books
4. **Section**: There are 4 sections in Module *About This Book*.
    * Preface
    * Acknowledgements
    * Notation
    * Chapter Dependency
5. **Subsection**: There are 6 subsections in Section *Acknowledgements*.
    * Project Leaders
    * Content Contributors
    * Translators
    * Reviewers
    * Technology Stacks

### Versioning

This project uses a four-part versioning scheme: `x.y.z.a`.
Those numbers are ordered by significance from left (most significant) to right (least significant).

* `x`: This digit counts up when a milestone of the project is accomplished.
    * Finishing Chapter *Foundational Quantum Computing*.
    * Finishing Part *The Application of Quantum Computing*.
    * Finishing Part *The Future of Quantum Computing*.
    * Implementing a core feature listed in [`README.md`](./README.md).
* `y`: Finishing a chapter.
* `z`: Finishing a module.
* `a`: Fixing minor issues (e.g., typos, minor logical errors, addenda, etc.)

In patch notes, releases, and announcements, the version number obeys the following conventions.

* **Resetting Lower Digits**:
Incrementing a higher-significance digit resets all digits to its right.
For instance, an update include a module that also complete an entire chapter at version `0.2.1`, the new version becomes `0.3`, not `0.3.2`.
* **Truncating Trailing Zeros**:
Trailing zeros on the right are omitted.
For example, version `0.2.0.0` is written as `0.2`.
* **Pre-Release Suffixes**:
If necessary, pre-release tags such as `-beta` or `-test` can be appended to the end of the version number (e.g., `1.3.5-beta`).

<!-- ## Writing Philosophy

### Open Source

### Intuition and Rigor

### Examples and Counterexamples

### Visualization

### Platform Independence

### Internationalization -->

<!-- ## Design Choices

### Readability

### Futuristic

### Classic

### Simple

### Book Cover

### Theme *Quantum* -->

## Notes on Formatting

This is a note for the main author on text formatting and typesetting.
No contributors are strictly obliged to follow the conventions listed below.
Any contributions will be reviewed and edited on behalf of the following formatting conventions by the main author.

### Sentence and Paragraph

In Markdown, every sentence marked its end by a period must be separated by a new line.
This makes the Markdown environment less run-on and easier to locate typos.
When the context within a paragraph shifts, it is better to give a newline to separate different topics into two different paragraphs.
In a single paragraph, it is best to put more than four sentences but less than ten sentences to preserve legibility.

### Admonitions

The main textbook renderer mdBook natively supports admonition feature.
The textbook uses these five admonitions (note, tip, important, warning, and caution) in the following circumstances.

* **ℹ️ Note**
    * FYIs
    * Non-essential trivia
    * Optional background
* **💡 Tip**
    * Helpful advice
    * Mental models
    * Tricks and shortcuts
* **❗ Important**
    * Essential conventions
    * Crucial takeaways
* **⚠️ Warning**
    * Common misunderstandings
    * Logical fallacies
* **🚨 Caution**
    * Destructive risks
    * Real-world consequences

### Inline Mode and Display Mode

When a mathematical expression is written within a sentence, it is in inline mode, encapsulated by two `$` signs.
On the other hand, when a mathematical expression is written outside a sentence, it is in display mode, encapsulated by two `$$` signs.
Make sure to avoid mathematical expressions getting run-on (more than three `=` chains) in inline mode and strictly aligned using `align*`in display mode.

### Subscript and Superscript

It may depend on context, but when a subscript denotes an indexing and a superscript represents the power of a variable, the variable and the indexing should be bundled by `{·}` before the superscript.
For example, let a vector $\textbf{v} = \ket{v} \in \mathbb{R}^n$ and $v_i$ denotes its $i$-th real-valued component.
Then the way of finding the norm of the vector $\textbf{v}$ should be written as the following.
For different contexts and notations, this bundling rule must be refrained.

$$ \begin{align*}
    \lVert\textbf{v}\rVert
    &= \sqrt{\braket{v | v}} \\
    &= \sqrt{\sum_{i = 1}^{n} {v_i}^2} \\
    &= \sqrt{{v_1}^2 + {v_2}^2 + \cdots + {v_n}^2} \\
\end{align*} $$

```latex
$$ \begin{align*}
    \lVert\textbf{v}\rVert
    &= \sqrt{\braket{v | v}} \\
    &= \sqrt{\sum_{i = 1}^{n} {v_i}^2} \\
    &= \sqrt{{v_1}^2 + {v_2}^2 + \cdots + {v_n}^2} \\
\end{align*} $$
```

### Mathematical Constant

Some important mathematical constants, such as Euler's number $\mathrm{e}$ and imaginary unit $\mathrm{i}$, are written upright by `\mathrm{·}` command to avoid confusion.
In particular, imaginary unit $\mathrm{i}$ and common index $i$ can be disorienting when they are used in the same context; e.g., $\sum_{i = 1}^{\infty} \frac{\mathrm{i}}{i^2} = \frac{\pi^2\mathrm{i}}{6}$.
But it is best to pick a different index for this kind of context.

$$ \begin{align*}
    \mathrm{e}^{\theta\mathrm{i}}
    &= \exp(\theta\mathrm{i}) \\
    &= \cos(\theta) + \sin(\theta)\mathrm{i}
\end{align*} $$

```latex
$$ \begin{align*}
    \mathrm{e}^{\theta\mathrm{i}}
    &= \exp(\theta\mathrm{i}) \\
    &= \cos(\theta) + \sin(\theta)\mathrm{i}
\end{align*} $$
```

### Bracket and Bra-Ket

In display mode, the size of some brackets, such as `(`, `)`, `[`, `]`, `{`, `}`, `\lvert`, `\rvert`, `\lVert`, and `\rVert`, and macros, such as `\set{·}`, `\bra{·}`, `\ket{·}`, and `\braket{·}`, must be adjusted depending on their inner content.
If they are encapsulating fractions, variables with subscripts/superscripts, and/or big operators such as $\int$, $\sum$, $\prod$, $\bigcup$, $\bigcap$, $\bigvee$, $\bigwedge$, $\bigoplus$, and $\bigotimes$, then `\left` and `\right` delimiters must be used for brackets, and the uppercase version such as `\Set{·}`, `\Bra{·}`, `\Ket{·}`, and `Braket{·}` replaces the lowercase version for macros.
For inline mode, no size adjustment is required.

$$ \begin{align*}
    \braket{\operatorname{U}}
    &= \sum_{\lambda \in \operatorname{spec}(\operatorname{U})} p(\lambda)\lambda \\
    &= \sum_{\lambda \in \operatorname{spec}(\operatorname{U})} \lambda\Braket{\psi | \operatorname{P}_\lambda | \psi} \\
    &= \Braket{\psi | \sum_{\lambda \in \operatorname{spec}(\operatorname{U})} \lambda\operatorname{P}_\lambda | \psi} \\
    &= \braket{\psi | \operatorname{U} | \psi}
\end{align*} $$

```latex
$$ \begin{align*}
    \braket{\operatorname{U}}
    &= \sum_{\lambda \in \operatorname{spec}(\operatorname{U})} p(\lambda)\lambda \\
    &= \sum_{\lambda \in \operatorname{spec}(\operatorname{U})} \lambda\Braket{\psi | \operatorname{P}_\lambda | \psi} \\
    &= \Braket{\psi | \sum_{\lambda \in \operatorname{spec}(\operatorname{U})} \lambda\operatorname{P}_\lambda | \psi} \\
    &= \braket{\psi | \operatorname{U} | \psi}
\end{align*} $$
```

### Vector and Matrix

Any vectors or matrices with strictly less than four row and column entries can be written in inline mode and as a single line in the math mode.
If they are larger than this constraint, they must be written in the display mode, separated by newlines for every row.
For example, while a Hadamard gate can be written in a sentence $\operatorname{H} = \frac{1}{\sqrt{2}} [\begin{smallmatrix} 1 & 1 \\ 1 & -1 \end{smallmatrix}]$, a CNOT gate should be written as the following.

$$ \begin{align*}
    \operatorname{CNOT}
    &= 
    \begin{bmatrix}
        1 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1 \\
        0 & 0 & 1 & 0
    \end{bmatrix}
\end{align*} $$

```latex
$$ \begin{align*}
    \operatorname{CNOT}
    &= 
    \begin{bmatrix}
        1 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1 \\
        0 & 0 & 1 & 0
    \end{bmatrix}
\end{align*} $$
```

### Differential Form

When typing a differential form in $\LaTeX$, make sure to use the `\mathrm{·}` command on $\mathrm{d}$ to avoid confusion.
Here, $dx$ stands for quantity $d$ multiplied by $x$, and $\mathrm{d}x$ stands for differential form of variable $x$.
To provide extra clarity, it is advised to put the `\,` command before the differential form whenever it is multiplied by a different variable.

$$ \begin{align*}
    \int_{-\infty}^{\infty} \mathrm{e}^{-x^2} \,\mathrm{d}x
    &= \sqrt{\left(\int_{-\infty}^{\infty} \mathrm{e}^{-x^2} \,\mathrm{d}x\right)^2} \\
    &= \sqrt{\left(\int_{-\infty}^{\infty} \mathrm{e}^{-x^2} \,\mathrm{d}x\right) \left(\int_{-\infty}^{\infty} \mathrm{e}^{-y^2} \,\mathrm{d}y\right)} \\
    &= \sqrt{\int_{-\infty}^{\infty}\int_{-\infty}^{\infty} \mathrm{e}^{-\left(x^2+y^2\right)} \,\mathrm{d}x \,\mathrm{d}y} \\
    &= \sqrt{\int_{0}^{2\pi} \int_{0}^{\infty} \mathrm{e}^{-r^2}r \,\mathrm{d}r \,\mathrm{d}\theta} \\
    &= \sqrt{\pi}
\end{align*} $$

```latex
$$ \begin{align*}
    \int_{-\infty}^{\infty} \mathrm{e}^{-x^2} \,\mathrm{d}x
    &= \sqrt{\left(\int_{-\infty}^{\infty} \mathrm{e}^{-x^2} \,\mathrm{d}x\right)^2} \\
    &= \sqrt{\left(\int_{-\infty}^{\infty} \mathrm{e}^{-x^2} \,\mathrm{d}x\right) \left(\int_{-\infty}^{\infty} \mathrm{e}^{-y^2} \,\mathrm{d}y\right)} \\
    &= \sqrt{\int_{-\infty}^{\infty}\int_{-\infty}^{\infty} \mathrm{e}^{-\left(x^2+y^2\right)} \,\mathrm{d}x \,\mathrm{d}y} \\
    &= \sqrt{\int_{0}^{2\pi} \int_{0}^{\infty} \mathrm{e}^{-r^2}r \,\mathrm{d}r \,\mathrm{d}\theta} \\
    &= \sqrt{\pi}
\end{align*} $$
```

### Differentiation Notation

The same rule is applied to differential notations.
For Leibniz notation, the $\mathrm{d}$'s should be encapsulated by `\mathrm{·}`: $\frac{\mathrm{d}}{\mathrm{d}x}$.
When multiple differential forms are placed consecutively, especially the case for partial differentiation, those should be separated by `\,` command: $\frac{\partial^2}{\partial{x} \,\partial{y}}$.
For Lagrangian notation, when there must be more than three primes, use $f^{(n)}$ instead, where $n$ stands for the number of differentiations on the function $f$.

$$ \begin{align*}
    T_f(a)
    &= \sum_{n = 0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n \\
    &= f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2 + \frac{f'''(a)}{6}(x-a)^3 + \frac{f^{(4)}(a)}{24}(x-a)^4 + \cdots \\
\end{align*} $$

```latex
$$ \begin{align*}
    T_f(a)
    &= \sum_{n = 0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n \\
    &= f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2 + \frac{f'''(a)}{6}(x-a)^3 + \frac{f^{(4)}(a)}{24}(x-a)^4 + \cdots \\
\end{align*} $$
```
