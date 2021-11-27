---
title: 004 - Quick Start 
use_math: true 
---

**Contents**
* TOC
{:toc}


## MathJax 

Just need to set the following in the page: 

```yaml
---
use_math: true 
---
```

the the following LaTeX code

```tex
$$
\kappa=\frac{\int D(E) \phi(E) d E}{95 M e V m b \cdot \Phi}=\frac{\Phi_{e q}}{\Phi}
$$
```
will generate: 

$$
\kappa=\frac{\int D(E) \phi(E) d E}{95 M e V m b \cdot \Phi}=\frac{\Phi_{e q}}{\Phi}
$$

this one

```tex
Calculate the induced current on the targeted electrode: $$i(t) = \vec{E_w}(\vec{x}) \cdot \vec{v}(\vec{x},t) \cdot q$$
```
will generate:

Calculate the induced current on the targeted electrode: $$i(t) = \vec{E_w}(\vec{x}) \cdot \vec{v}(\vec{x},t) \cdot q$$
