# Bachelor-Thesis-CSAI: Stress Detection Using Wrist-Based Physiological Signals

## Project discription

This respository contains the code used for my bachelor thesis in Cognitive Science & Artificial Intelligence at Tilburg University. 
The goal of this study was to investigate the performance of a 1D Convolutional Neural Network (1D-CNN) for stress detection using physiological signals from the WESAD dataset. The performance of the 1D-CNN was compared to a Logistic Regression baseline model. Both binary and multiclass classification tasks were evaluated using Leave-One-Subject-Out (LOSO) cross-validation.

Training was performed on GPU to reduce computation time.

## Dataset

The experiments were conducted using the WESAD dataset.

The dataset is not fully included, but can be obtained through this link: https://www.kaggle.com/datasets/orvile/wesad-wearable-stress-affect-detection-dataset/data

The following wrist-based physiological sigals were used:
- BVP (Blood Volume Pulse)
- EDA (Electrodermal Activity)
- ACC (Accelerometer)
- TEMP (Skin Temperature)

Signals were preprocessed and segmented into sliding windows before being used for classification

## Repository Structure

- Notebooks/ - Data preprocessing, model training and results analysis
- Slurm/     - SLURM batch files used for the GPU4EDU infrastructure
- Results/   - Final result files and figures

## Requirements
Install the required packages: 

pip install -r requirements.txt

The notebooks contain the following workflow:
1. Data preprocessing
2. Model training (1D-CNN) - Binary and multiclass classification
3. Logistic Regression Baseline
4. Results analysis

##Reproducability

This repository contains the code required to reproduce the experiments presented in the thesis, including preprocessing, model training, evaluation, and result analysis

##Author

Britt Burgering
Bachelor Thesis - Cognitive Science & Artificial Intelligence
Tilburg University

