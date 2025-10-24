
# Hodgkin-Huxley Neuron Simulation and Bayesian Inference

This repository contains Jupyter notebooks that demonstrate how to simulate a **Hodgkin–Huxley (HH)** neuron model and apply **Bayesian inference** using **simulation-based methods**.
The project shows how to generate synthetic neuronal data and use modern probabilistic techniques to infer the underlying model parameters.

It is designed to be **interactive** and **beginner-friendly**, with explanatory text and visualizations throughout.

<br>

## Overview

The **Hodgkin–Huxley model** describes how a neuron’s membrane potential changes over time as ions flow through voltage-gated channels.
By adjusting a few key parameters, such as the resting potential and stimulus amplitude, we can reproduce realistic patterns of neuronal firing.

In this project, we take a **Bayesian approach** to estimating those parameters.
Instead of directly fitting equations to experimental data, we use **simulation-based inference (SBI)**:

1. We **simulate synthetic data** using the HH model with randomly chosen parameters.
2. These parameter–data pairs form a **synthetic training dataset**.
3. We train a **neural posterior estimator** (from the `sbi` library) to learn the relationship between model parameters and the resulting voltage traces.
4. Once trained, this model can infer the **most probable parameters** that could have produced new, unseen data.

This workflow is particularly useful when:

* The model is complex or non-linear, making traditional likelihood-based methods impractical.
* Real data are limited or noisy, but simulations are easy to run.
* We want to quantify uncertainty in parameter estimates, not just find single best-fit values.

<br>


## Setup Instructions

### 1. Clone This Repository

```
git clone https://github.com/yourusername/Hodgkin_Huxley_Bayesian_Inference.git
cd Hodgkin_Huxley_Bayesian_Inference
```

### 2. Create and Activate a Virtual Environment (Python 3.11.8)

```
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

### 3. Run the Setup Script

The included `setup_pyhh.sh` script clones the `pyHH` library and installs its dependencies.

```
chmod +x setup_pyhh.sh
./setup_pyhh.sh
```

This script will:

* Clone the official `pyHH` repository
* Install `numpy` and `matplotlib`

<br>

## Repository Structure

```
├── README.md
├── requirements.txt
├── setup_pyhh.sh
├── HH_model_simulation.ipynb      
└── Bayesian_Inference.ipynb      
```

<br>

## Notebooks Overview

- **`HH_model_simulation.ipynb`**

  This notebook is intended as a learning tool to help users understand how the Hodgkin–Huxley model works. It explores how changes in parameters affect the neuron’s membrane potential.
  It is not used directly in the Bayesian inference workflow. Instead, for inference, we rely on the pyHH
  library, which provides a clean, reusable implementation of the Hodgkin–Huxley model.
  This separation keeps the project organized and avoids having to turn the educational simulation notebook into a consumable model package.

- **`Bayesian_Inference.ipynb`**
  
  Uses simulation-based Bayesian inference to estimate model parameters (e.g., resting potential, stimulus amplitude) from synthetic voltage data.
  The notebook illustrates how simulated experiments can be used to train a neural network that learns to infer the true parameters probabilistically.

<br>

## Requirements

```
python == 3.11.8
numpy
matplotlib
ipywidgets
notebook
torch
seaborn
sbi
```

Install them all with:

```
pip install -r requirements.txt
```

<br>

## Additional Resources

If you're new to neural computation or Bayesian modeling, the following materials provide excellent background:

* [Visualizing the Hodgkin-Huxley Model (YouTube)](https://www.youtube.com/watch?v=zOmhHE2xctw)
* [MIT OpenCourseWare – Introduction to Neural Computation (9.40)](https://ocw.mit.edu/courses/9-40-introduction-to-neural-computation-spring-2018/)
* [sbi: Simulation-Based Inference for the Hodgkin-Huxley Model](https://sbi-dev.github.io/sbi/0.22/examples/00_HH_simulator/)

<br>

## Citation

This project uses the `pyHH` library for simulating the Hodgkin–Huxley neuron model.
If you use or extend this work, please cite the original repository:

> Harden, S. W. (2020). *pyHH: A Python implementation of the Hodgkin-Huxley neuron model.* GitHub. [https://github.com/swharden/pyHH](https://github.com/swharden/pyHH)

<br>

## License

This project is released under the MIT License.