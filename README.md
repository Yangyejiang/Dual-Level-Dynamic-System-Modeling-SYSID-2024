# Dual-Level-Dynamic-System-Modeling-MECC-2024
This is the code for the 2024 Modeling, Estimation and Control Conference. The description for the LASA data set can be found at https://cs.stanford.edu/people/khansari/download.html, while the neural network approximation of its dynamics is at https://github.com/xiangweiming/ignnv.

# Related tools and software
This toolbox makes use of IGNNV (at:https://github.com/xiangweiming/ignnv) and NNV (at: https://github.com/verivital/nnv) for reachability analysis.

# Setup
1. MATLAB pre-installed is required.
2. Add the folder "Dual-Level-Dynamic-System-Modeling-SYSID-2024" to the MATLAB workpath.

# Running tests and examples

1. Open .../Dual-Level-Dynamic-System-Modeling-SYSID-2024/Runtest.mlx with MATLAB to execute the scripts for a test run of the angle example.
2. Open .../Dual-Level-Dynamic-System-Modeling-SYSID-2024/RuntestLoopandForms.mlx with MATLAB to execute the scripts for a test run of the ALL lasa examples and generate forms and graphs in Dual-Level-Dynamic-System-Modeling-SYSID-2024/SaveFigure.

# Features
This toolbox will automatically generate a dual-level learning model for the LASA data set.

1. ME partitioning\
![image](https://github.com/aicpslab/Dual-Level-Dynamic-System-Modeling-SYSID-2024/blob/main/Results/png/6.JShape_SamplesPartitionsFig.png)

2. Merging\
![image](https://github.com/aicpslab/Dual-Level-Dynamic-System-Modeling-SYSID-2024/blob/main/Results/png/6.JShape_Merge.png)

3. Obtaining Transition System Cells\
![image](https://github.com/aicpslab/Dual-Level-Dynamic-System-Modeling-SYSID-2024/blob/main/Results/png/6.JShape_AbstractionPartitions.png).

4. Transition Map\
 ![image](https://github.com/aicpslab/Dual-Level-Dynamic-System-Modeling-SYSID-2024/blob/main/Results/png/6.JShape_AbstractionMap.png).  
