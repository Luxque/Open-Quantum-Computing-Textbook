# Open Quantum Computing Textbook

## Project Description

> An open textbook for quantum computing theory and its applications.

In recent years, there has been a huge increase in demand for more computing power, but the limit of classical computing is within our sight.
Despite the sophisticated nature of quantum mechanics, quantum computing, a computation method leveraging quantum phenomena such as superposition and entanglement, is recognized as a new computing method to bypass such problem.
Unfortunately, due to the fact that quantum computers are the product of multiple disciplines, learning resources are limited for beginners to an extent.
This textbook will cover the foundational theories behind quantum computers, what they promise, what they cannot do, and their applications, bridging the gap between newcomers and frontiers of the research.
We aim to build a welcoming environment for everyone.

## Read the Book

You can read the book by visiting [here](https://luxque.github.io/OQCT/).

## Features

This textbook aims to provide educational content for people with different backgrounds.
The features listed below are implemented to support the best reader experience and to preserve academic rigor.
Please note that features with a warning sign (⚠️) denote that the feature is not fully implemented.
Any assistance to fully implement those features is always welcomed!

### ✅ Open Evnrionment

The main goal of this project is to provide free educational content and spread knowledge.
Anyone with a shallow understanding of quantum computing must be able to access this textbook, and researchers with different backgrounds can find errors and suggest new topics to be covered by the textbook.
This open environment will make quantum computing more accessible and eventually more contributors to the entire quantum computing community.

### 🚧 Custom Theme

> ⚠️ This feature is not implemented yet!

[`mdBook`](https://github.com/rust-lang/mdBook) provides several themes by default: Light, Rust, Coal, Navy, and Ayu.
On top of those, to make this textbook more unique and distinctive, a new color scheme, *Quantum*, will be added.
The chosen default font is [CMU Serif](https://www.fontsquirrel.com/fonts/computer-modern), which is distributed under the *SIL Open Font License*, to match the aesthetic typeset of the mathematical expressions rendered by $\KaTeX$.

### 🚧 Official PDF Edition

> ⚠️ This feature is not implemented yet!

The official PDF edition will feature the exact copy of the web version textbook, freshly rendered by $\LaTeX$.
The PDF will be available in this repository and can always be downloaded.
Some animated videos will be replaced by TikZ diagrams.
You are more than welcome to print the PDF in a printing shop for personal use.

### 🚧 Interactive Environments

> ⚠️ This feature is not implemented yet!

Sometimes a single piece of text alone cannot provide the big picture of some mathematical concept at once.
[`MANIM`](https://github.com/manimCommunity/manim) provides an astonishing set of tools for creating animations to build intuitive foundations.
If possible, interactive applets powered by GeoGebra will also be provided in the web version textbook.

### 🚧 Proof Verification

> ⚠️ This feature is not implemented yet!

We must formally verify the proofs written in this textbook in order to provide mathematically rigorous reasoning.
For formal verification, [Lean 4](https://github.com/leanprover/lean4) will be used.
Any feedback on proofs written in plain English and the Lean code will be highly appreciated.

## Technological Stack

* [`mdBook`](https://github.com/rust-lang/mdBook): Renders the textbook Markdown to HTML.
* [`mdBook-KaTeX`](https://github.com/lzanini/mdbook-katex): Preprocessor that allows using $\KaTeX$ in mdBook.
* [`MANIM`](https://github.com/manimCommunity/manim): Python-based animation tool for mathematical visuals.

## Directory Structure

* [`figure/`](./figure/): Figures and videos for the textbook.
* [`text/`](./text/): Main textbook Markdown files.
    * 👑 [`text/eng/`](./text/eng/): (American) English textbook files. All translations must be based on this directory.
* [`script/`](./script/): Pieces of software that help maintiaing the textbook.

## Contribution

We welcome your feedback and contributions.
As this textbook is expected to cover various topics of quantum computing with academic rigor, any kind of assistance and support will be highly appreciated.
Before you start working on your contribution, please review the [contribution manual](./CONTRIBUTING.md) and [code of conduct](./CODE_OF_CONDUCT.md).

## License

This textbook is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

You are free to:
* **Share**: Copy and redistribute the material in any medium or format.
* **Adapt**: Remix, transform, and build upon the material for any purpose, even commercially.

Only under the following terms:
* **Attribution**: You must give appropriate credit, provide a link to the license, and indicate if changes were made.
* **ShareAlike**: If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.

For more details, please consult the [license deed](https://creativecommons.org/licenses/by-sa/4.0/deed.en) and the [full legal text](https://creativecommons.org/licenses/by-sa/4.0/legalcode.en).

![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/3.0/88x31.png)
