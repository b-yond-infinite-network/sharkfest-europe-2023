# B-YOND at Sharkfest Europe 2023
This repository contains the notebooks, code and documentation for B-YOND workshop **"Unraveling the Packet Mysteries: A Wireshark Journey with Machine Learning!"** at Sharkfest Europe 2023.

The data used in this workshop is kept in this separate [repository](https://github.com/b-yond-infinite-network/sharkfest-europe-2023-data).

## Pre-Requisites
- A basic understanding of programming in Python
- Familiarity with Jupyter notebooks , if you haven't used Jupyter notebooks before please check [this tutorial](https://www.datacamp.com/tutorial/installing-jupyter-notebook) ahead of the workshop.

## Workshop Material
There are two options to run this workshop:

* [Option 1:](#option-1-using-google-colab) (preferred): Using [Google Colab](https://colab.google)
  > Google Colaboratory, or "Colab" for short, is a cloud-based Jupyter notebook environment that allows for free Python code execution with free access to GPUs. To learn more about how to use Google Colaboratory, watch this [YouTube tutorial](https://www.youtube.com/watch?v=inN8seMm7UI).
  * Minimal setup required (5 mins)
  * Requires a google account
  
* [Option 2:](#option-2-local-mode) Local Mode
  * Requires local installation of prerequisites (tools & libraries)
  * Only supported on POSIX systems
  > If you have a Windows machine either install and setup WSL2 ahead of time and make sure your network configuration is working as expected or switch back to Option 1

### Option 1: Using Google Colab

#### Step 1: Logging into Google Colab
* Go to [Google Colab](https://colab.research.google.com/).
* Click on the Sign in button in the upper-right corner of the page.
* Sign in with your Google account credentials. If you don’t have a Google account, you will need to create one.

#### Step 2: Opening the first Notebook in Colab
* Click on `File` in the top menu.
* Select `Open Notebook`.
* In the pop-up window, go to the `GitHub` tab.
* Paste the following notebook URL  into the provided field and press `Enter` or click `Search`.
  * https://github.com/b-yond-infinite-network/sharkfest-europe-2023/blob/main/notebooks/network-traces-clustering.ipynb
* Now, you can interact with and run the notebook in Google Colab.

#### Step 3: Opening the second Notebook in Colab
* Repeat [Step 2](#step-2-opening-the-first-notebook-in-colab) for the second notebook URL 
  * https://github.com/b-yond-infinite-network/sharkfest-europe-2023/blob/main/notebooks/packet-anomaly-detection.ipynb


### Option 2: Local Mode
#### Pre-Requisites
- POSIX compliant OS (Linux, MacOS, WSL2)
- Python 3.9 or above
- Make

#### Installation

> If you do not have `make` installed you can check the [Makefile](./Makefile) being used and replicate the commands locally.

1. Clone the repo
2. Create a python virtual environment
    ```
    make .venv
    ```
3. Install required dependencies
    ```
    make install
    ```
4. Launch jupyter lab
    ```
    make launch
    ```
5. In your browser access the jupyter lab instance at `http://localhost:8888/lab` 
6. Open any of the notebooks under `notebooks/` folder and follow through the step by step in the notebook
7. To stop jupyter lab press `Ctrl+C` in the terminal where you launched jupyter lab or alternative use `make stop`
8. Once you are done if you wish to clean up your local filesystem run the following:
    ```
    make clean
    ```
