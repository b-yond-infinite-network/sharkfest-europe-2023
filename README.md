# sharkfest-europe-2023
This repo contains the notebooks, code, data, documentation for shark fest Europe 2023 workshop

##


## Local Mode
## Pre-Requisites
- POSIX compliant OS (Linux, MacOS, WSL2)
- Python 3.9 or above
- Make
- Optionally Wireshark 4.0.7 and its binaries `tshark`, `editcap`
- Familiarity with Jupyter Notebooks 

## Installation

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
