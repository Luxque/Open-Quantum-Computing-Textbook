# Quantum Impossibles

They are called no-go theorems.

## No-Cloning Theorem

> **Theorem**:
> There is no unitary operator $U$ such that $U\ket{\psi}\ket{\phi} = U\ket{\psi}\ket{\psi}$ where $\ket{\psi}$ and $\ket{\phi}$ are arbitrary quantum states.

> **Proof**:
> Suppose there exists such operator $U$, and let us put those arbitrary states as $\Ket{\psi} = \alpha\Ket{0} + \beta\Ket{1}$ and $\Ket{\phi} = \gamma\Ket{0} + \delta\Ket{1}$ where $\alpha, \beta, \gamma, \delta \in \mathbb{C}$.
> Then applying $U$ on $\Ket{\psi}\Ket{\phi}$ gives us the following:
> $$
\begin{align*}
    U\Ket{\psi}\Ket{\phi}
    &= U\left(\alpha\Ket{0} + \beta\Ket{1}\right)\Ket{\phi} \\
    &= \left(\alpha\Ket{0} + \beta\Ket{1}\right) \left(\alpha\Ket{0} + \beta\Ket{1}\right) \\
    &= \alpha^2\Ket{00} + \alpha\beta\Ket{01} + \alpha\beta\Ket{10} + \beta^2\Ket{11}.
\end{align*}
$$
> However, if we distribute $\Ket{\psi}\Ket{\phi}$ first, we get a different result:
> $$
\begin{align*}
    U\Ket{\psi}\Ket{\phi}
    &= U \left(\alpha\Ket{0} + \beta\Ket{1}\right) \left(\gamma\Ket{0} + \delta\Ket{1}\right) \\
    &= U\left(\alpha\gamma\Ket{00} + \alpha\delta\Ket{01} + \beta\gamma\Ket{10} = \beta\delta\Ket{11}\right) \\
    &= \alpha\gamma{U}\Ket{00} + \alpha\delta{U}\Ket{01} + \beta\gamma{U}\Ket{10} + \beta\delta{U}\Ket{11} \\
    &= \alpha\gamma\Ket{00} + \alpha\delta\Ket{00} + \beta\gamma\Ket{11} + \beta\delta\Ket{11} \\
    &= \alpha\left(\gamma+\delta\right)\Ket{00} + \beta\left(\gamma+\delta\right)\Ket{11}.
\end{align*}
$$
> Unless it is under a special circumstance ($\alpha = 0$ or $\beta = 0$), we have $\alpha^2\ket{00} + \alpha\beta\ket{01} + \alpha\beta\ket{10} + \beta^2\ket{11} \neq \alpha(\gamma+\delta)\ket{00} + \beta(\gamma+\delta)\ket{11}$.
> By contradiction, we have shown that there is no quantum copy operator $U$.
> ■

## No-Deleting Theorem

### Deleting a Copy

> **Theorem**:
> There is no unitary operator $U$ such that $U\ket{\psi}\ket{\psi} = \ket{\psi}\ket{0}$ where $\ket{\psi}$ is an arbitrary quantum state.

> **Proof**:
> Suppose there exists such operator $U$, and let us put $\Ket{\psi} = \alpha\Ket{0} + \beta\Ket{1}$.
> Note that applying $U$ on qubits with different states does not modify anything on the second qubit.
> Applying $U$ directly on $\Ket{\psi}\Ket{\psi}$ gives us:
> $$
\begin{align*}
    U\Ket{\psi}\Ket{\psi}
    &= U \left(\alpha\Ket{0} + \beta\Ket{1}\right) \left(\alpha\Ket{0} + \beta\Ket{1}\right) \\
    &= U \left(\alpha^2\Ket{00} + \alpha\beta\Ket{01} + \alpha\beta\Ket{10} + \beta^2\Ket{11}\right) \\
    &= \alpha^2{U}\Ket{00} + \alpha\beta{U}\Ket{01} + \alpha\beta{U}\Ket{10} + \beta^2{U}\Ket{11} \\
    &= \alpha^2\Ket{00} + \alpha\beta\Ket{01} + \alpha\beta\Ket{10} + \beta^2\Ket{10} \\
    &= \alpha^2\Ket{00} + \alpha\beta\Ket{01} + \left(\alpha\beta+\beta^2\right)\Ket{10}.
\end{align*}
$$
> Recall that $U\Ket{\psi}\Ket{\psi}$ is supposed to yield $\Ket{\psi}\Ket{0}$, but replacing $\Ket{\psi}$ with $\alpha\Ket{0} + \beta\Ket{1}$ gives us:
> $$
\begin{align*}
    U\Ket{\psi}\Ket{\psi}
    &= U\Ket{\psi}\Ket{0} \\
    &= \left(\alpha\Ket{0} + \beta\Ket{1}\right)\Ket{0} \\
    &= \alpha\Ket{00} + \beta\Ket{10}.
\end{align*}
$$
> Unless it is under a special circumstance ($\alpha = 0$ or $\beta = 0$), we have $\alpha^2\ket{00} + \alpha\beta\ket{01} + (\alpha\beta+\beta^2)\ket{10} \neq \alpha\ket{00} + \beta\ket{10}$, which is a contradiction.
> Therefore, we cannot delete one of the two copies of arbitrary quantum state.
> ■

### Deleting a Single Qubit

> **Theorem**:
> There is no unitary operator $U$ such that $U\ket{\psi} = \ket{0}$ where $\ket{\psi}$ is an arbitrary quantum state.

> **Proof**:
> Suppose there exists such unitary operator $U$, and let us put $\ket{\psi} = \alpha\ket{0} + \beta\ket{1}$ and $\alpha = re^{i\theta}$ and $\beta = \rho{e^{i\varphi}}$ where $r > 0$, $\rho > 0$, $-\pi \leq \theta < \pi$, and $-\pi \leq \varphi < \pi$.
> Here, we are just taking $\theta$ and $\varphi$ as the principal arguments of $\alpha$ and $\beta$.
> By linearity, we can expand the result as the following:
> $$
\begin{align*}
    U\Ket{\psi}
    &= U\left(\alpha\Ket{0} + \beta\Ket{1}\right) \\
    &= \alpha{U}\Ket{0} + \beta{U}\Ket{1} \\
    &= \alpha\Ket{0} + \beta\Ket{0} \\
    &= \left(\alpha+\beta\right)\Ket{0}.
\end{align*}
$$
> You might be wondering how to derive $\alpha+\beta \neq 1$ for a contradiction, but it is sufficient to show that $(\alpha+\beta)\ket{0}$ cannot be a valid quantum state, i.e., $|\alpha+\beta|^2 \neq 1$.
> By applying some complex conjugate properties, we can write $|\alpha+\beta|^2$ as the following:
> $$
\begin{align*}
    \left|\alpha+\beta\right|^2
    &= \left(\alpha+\beta\right) \left(\alpha+\beta\right)^* \\
    &= \left(\alpha+\beta\right) \left(\alpha^*+\beta^*\right) \\
    &= \alpha\alpha^* + \alpha^*\beta + \alpha\beta^* + \beta\beta^* \\
    &= \underbrace{\left|\alpha\right|^2 + \left|\beta\right|^2}_{1} + \alpha^*\beta + \alpha\beta^*.
\end{align*}
$$
> Now, let us evaluate the extra term $\alpha^*\beta + \alpha\beta^*$.
> Rcalling $\cos(\omega) = \frac{e^{i\omega}+e^{-i\omega}}{2}$, we obtain:
> $$
\begin{align*}
    \alpha^*\beta + \alpha\beta^*
    &= r\rho{e^{-i\theta}e^{i\varphi}} + r\rho{e^{i\theta}e^{-i\varphi}} \\
    &= r\rho\left(e^{-i\left(\theta-\varphi\right)} + e^{i\left(\theta-\varphi\right)}\right) \\
    &= 2r\rho\cos\left(\theta-\varphi\right) \neq 0.
\end{align*}
$$
> Indeed, $(\alpha+\beta)\ket{0}$ cannot be a quantum state since $|\alpha+\beta|^2 \neq 1$, which is a contradiction of our initial assumption.
> Therefore, there is no such operator $U$.
> ■

## No-Communication Theorem

> **Theorem**: 

> **Proof**: 
> ■

## No-Broadcasting Theorem

> **Theorem**: 

> **Proof**: 
> ■

## No-Hiding Theorem

> **Theorem**: 

> **Proof**: 
> ■

## Further Reading
