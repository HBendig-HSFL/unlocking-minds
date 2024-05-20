# Literature Review

Approaches or solutions that have been tried before on similar projects.

**Summary of Each Work**:

- **Source 1**: COLET

  - **[Link](https://doi.org/10.1016/j.cmpb.2022.106989)**
  - **Objective**: Estimate Cognitive Workload based on Eyetracking
  - **Methods**:
    - Gaussian Naive Bayes,
    - Random Forest,
    - Linear Support Vector Machine,
    - Ensemble Gradient Boosting,
    - K-Nearest Neighbor,
    - Bernoulli Naives Bayes,
    - Logistic Regression,
    - Decision Trees
  - **Outcomes**:
    - Accuracies:
      - GNB Classifier high / low: around 88%
      - GNB Classifier: high / mid / low: 59%
  - **Relation to the Project**:
    - Deliveres the dataset
    - Tried the same task with conventional classifiers 

-------
- **Source 2**: A Machine Learning Approach for Detecting Cognitive Interference Based on Eye-Tracking Data

  - **[Link](https://doi.org/10.3389/fnhum.2022.806330)**
  - **Objective**: Collecting ET data while stroop test with different conditions, e.g. reading with interference / w.o. interference
  - **Methods**:
    - Random Forest
    - Logistic Regression
    - Artifical Neural Network
    - Support Vector Machine 
  - **Outcomes**:
    - Accuracies:
    - Model accuracies:
      - RF: ~63%
      - LR: ~59%
      - ANN: ~68%
      - SVM: ~68%
  - **Relation to the Project**:
    - Realted task, with more conditions
    - tried also a NN approach 

-------
- **Source 3**: A novel approach for real time eye state detection in fatigue awareness system

  - **[Link](https://ieeexplore.ieee.org/document/5513139)**
  - **Objective**: Classifiy in a live-application the fatique state of a car driver
  - **Methods**: AdaBoost for binary classification
  - **Outcomes**: In realtime model in real car environment 81,8 % accuracy
  - **Relation to the Project**:
    - Another approach for cognitive state detection, based on images
    - use the method in a live application 
