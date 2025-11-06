# Literature Context and Motivation

## Why Parameter Inference Matters in Neuroscience

Understanding the parameters of neural models is crucial for several reasons:

1. **Individual Variability**: Different neurons (even of the same type) can have different ion channel densities, leading to different firing patterns. Parameter inference helps us characterize this biological variability.

2. **Disease States**: Neurological disorders often involve changes in ion channel function. For example, certain forms of epilepsy are linked to mutations in sodium or potassium channels. Being able to infer parameters from recordings could help diagnose or understand disease mechanisms.

3. **Drug Effects**: Pharmaceuticals targeting the nervous system often work by modulating ion channel properties. Parameter inference can help quantify drug effects on channel kinetics.

4. **Biological Realism in AI**: Understanding how biological neurons encode and process information through their biophysical parameters can inspire more efficient and robust artificial neural network architectures.

## Simulation-Based Inference: The Modern Approach

Traditional parameter inference methods (like Maximum Likelihood Estimation or MCMC) require that we can compute the likelihood function $p(\text{data} | \text{parameters})$. However, for complex models like Hodgkin-Huxley, this likelihood is **intractable** - we cannot write down a mathematical formula for it.

**Simulation-Based Inference (SBI)** solves this problem by:
- Only requiring that we can *simulate* data from the model (which is easy)
- Using neural networks to learn the inverse mapping: data → parameters
- Providing full posterior distributions that quantify uncertainty

This approach has been particularly successful in neuroscience because:
- Neural models are often complex and nonlinear
- We can easily run simulations but cannot compute likelihoods analytically
- We want to quantify uncertainty, not just find point estimates

## Key References

### Foundational Work on SBI
- **Cranmer et al. (2020)**: "The frontier of simulation-based inference" - Comprehensive review of SBI methods and their applications across sciences.
- **Papamakarios et al. (2019)**: "Sequential Neural Likelihood" - Developed the SNPE (Sequential Neural Posterior Estimation) algorithm used in this project.

### SBI in Neuroscience
- **Gonçalves et al. (2020)**: "Training deep neural density estimators to identify mechanistic models of neural dynamics" - Demonstrated SBI for inferring parameters of neural models, including HH neurons.
- **Deistler et al. (2022)**: "Energy-efficient network activity from disparate circuit parameters" - Used SBI to understand parameter degeneracy in neural circuits.

### The HH Model in Modern Context
- **Hodgkin & Huxley (1952)**: "A quantitative description of membrane current and its application to conduction and excitation in nerve" - The original paper (Nobel Prize 1963).

## Connections to NeuroAI

This project sits at the intersection of computational neuroscience and machine learning:

1. **Inspiration for AI Architectures**: Understanding the role of different ion channels (parameters) could inspire new artificial neuron designs. For example:
   - The fast sodium current enables rapid, binary signaling - how does this compare to activation functions in ANNs?

2. **Interpretability**: Just as we infer HH parameters to understand biological neurons, similar Bayesian approaches could help interpret what parameters in deep networks are doing.



## Future Directions

This project could be extended to:
- **Real experimental data**: Applying these methods to patch-clamp recordings from real neurons
- **Model comparison**: Using Bayesian model evidence to choose between different ion channel models
