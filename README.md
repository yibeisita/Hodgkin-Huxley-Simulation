# Hodgkin-Huxley Neuron Simulation & Bayesian Inference
This repository contains Jupyter notebooks that simulate a Hodgkin-Huxley neuron model and apply Bayesian inference using synthetic data. The goal is to simulate neuronal activity and use Bayesian methods to infer the underlying model parameters.

It is designed to be **interactive** and **beginner-friendly**, with explanations and visualizations throughout.


## Setup Instructions 🔧

### 1. Clone This Repository

```
git clone https://github.com/yourusername/Hodgkin_Huxley_Bayesian_Inference.git
cd Hodgkin_Huxley_Bayesian_Inference
```

### 2. Create and Activate a Virtual Environment (Python 3.11.8)
```
python3 -m venv venv
source venv/bin/activate  # On Windows, use: venv\Scripts\activate
```

### 3. Run the Setup Script

The included `pyhh-setup.sh` script will clone the `pyHH` library and install its dependencies.

```
chmod +x setup_pyhh.sh
./setup_pyhh.sh
```

This script will:
- Clone the official pyHH repo
- Install numpy and matplotlib


## 📁 Repository Structure
````
├── README.md
├── requirements.txt
├── setup_pyhh.sh      
├── HH_model_simulation.ipynb    # Simulate Hodgkin-Huxley model
└── Bayesian_Inference.ipynb     # Bayesian inference on synthetic voltage data

````

## 📓 Notebooks Overview
- **HH_model_simulation.ipynb:** This notebook simulates the **Hodgkin-Huxley model** of a neuron and visualizes its behavior (membrane potential over time) with varying parameters.

- **Bayesian_Inference.ipynb:** This notebook applies **Bayesian inference** to infer the model parameters (such as resting potential and stimulus amplitude) from synthetic data generated using the Hodgkin-Huxley model.

## 📦 Requirements
````
python == 3.11.8
numpy
matplotlib
ipywidgets
notebook
torch
seaborn
sbi
````
Install them all with:
````
pip install -r requirements.txt
`````

## 📚 Additional Resources

If you're new to neural computation or want to dive deeper into the topics explored in this repository, here are some helpful resources:

- [Visualizing the Hodgkin-Huxley Model (YouTube)](https://www.youtube.com/watch?v=zOmhHE2xctw)  
  A clear, visual explanation of the Hodgkin-Huxley model and how it describes action potentials.

- [MIT OpenCourseWare – Introduction to Neural Computation (9.40)](https://ocw.mit.edu/courses/9-40-introduction-to-neural-computation-spring-2018/)  
  A full undergraduate course on neural computation covering biophysical modeling, neural coding, and dynamics.

- [sbi: Simulation-Based Inference for the Hodgkin-Huxley Model](https://sbi-dev.github.io/sbi/0.22/examples/00_HH_simulator/)  
  An official example from the `sbi` library demonstrating parameter inference on a Hodgkin-Huxley simulator.



## 📖 Citation
This project uses the `pyHH` library for simulating the Hodgkin-Huxley neuron model for Bayesian Inference. If you use this tool or build upon it, please consider citing the original repository:

> Harden, S. W. (2020). pyHH: A Python implementation of the Hodgkin-Huxley neuron model. GitHub. https://github.com/swharden/pyHH

## 📜 License
This project uses the MIT License. 