# Teachable Machine for Touch Designer
> **NOTE:** This repository is only tested on Apple Silicon running macOS Monterey `12.6.1`
## Requirements
- [Touch Designer](https://derivative.ca/download/archive) version `099` build `2022.31030`
- [Installation of Python](https://www.python.org/downloads/release/python-395/) `3.9.5`
- An exported [Teachable Machine](https://teachablemachine.withgoogle.com/P) standard image model (Keras)

## Files
Place your `keras_model.h5` and `labels.txt` in the folder of this repository

## Wiki
For more information, check out [our wiki](https://google.com)

# Installation
## One-click installation
Double click on `INSTALL.command`

## Manual installation
### 1. Create virtual environment
```
python3 -m venv td-tm
```
### 2. Activate virtual environment
```
source td-tm/bin/activate
```

### 3. Install packages
```
pip install -r requirements.txt
```