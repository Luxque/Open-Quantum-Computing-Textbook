# Contributing

## Document Description

This document describes 

## Getting Started

(Note on the code of conduct.)

### Cloning the Repository

### Installing mdBook

```bash
cargo install mdbook --version 0.4.48
cargo install mdbook-kartex`
```

### Installing MANIM

### Installing Other Python Packages

## Features

### Official PDF Edition

* Using scripts to convert from Markdown files to $\LaTeX$.
* Since we cannot play a video on a paper, we have to create TikZ version of each video figures.
* The PDF can be printed in a printing shop for personal uses.

### Interactive Environments

* MANIM
* GeoGebra

### Proof Verification

* We must verify proofs written in this book provide mathematically rigorous logical reasoning.
* In order to this, using Lean would be the most applicable approach.
* Any feedback on proofs written in English or Lean code are appreciated.

### Custom Theme

* What mdBook natively supports.
* Adding new color scheme.
* Using Computer Modern font.

## Contributing Methods

### Translation

## Contributing Conventions

### Branch Conventions

### Hierarchy of Book Contents

#### Part

#### Chapter

#### Module

#### Section

#### Subsection

## Philosophy of Writing

### Intuition and Rigor

## Notes on Formatting

This is a note for author on formatting of this text.
The contributors are not obliged to follow the convention explained below.
Any contributions will be reviewed and edited according to the following formatting conventions by the main author.

### Superscripts and Subscripts

### Matrices

### Differential Forms

When typing a differential forms in $\LaTeX$, make sure to use the `\text{}` command on $\text{d}$ to avoid the confusion.
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

The $\LaTeX$ typeset should be written as the following.

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
