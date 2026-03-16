#!/bin/bash
# ANACONDA REPAIR SUITE - LINUX EDITION
# Author: Hamid Mammadov

echo "Stopping Anaconda/Python processes..."
pkill -f python
pkill -f conda

echo "Cleaning Conda cache..."
conda clean --all -y

echo "Resetting Navigator..."
anaconda-navigator --reset

echo "Updating Conda and Anaconda..."
conda update -n base -c defaults conda -y
conda update anaconda -y

echo "Reinstalling QT/PyQt..."
conda install qt pyqt -y

echo "Repair complete. Please restart your terminal."
