#!/bin/bash
# ANACONDA REPAIR SUITE - LINUX PRO EDITION
# Developer: Hamid Mammadov

# COLOR CODES
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Starting Anaconda Repair Suite...${NC}"

# 1. Safe Process Termination
echo -e "${YELLOW}Stopping Anaconda-related processes...${NC}"
# We only close the processes in the anaconda folder
pkill -f "anaconda3" || echo "No specific Anaconda process found."

# 2. Trying to activate the Conda environment
if [ -f "$HOME/anaconda3/bin/activate" ]; then
    source "$HOME/anaconda3/bin/activate"
elif [ -f "$HOME/miniconda3/bin/activate" ]; then
    source "$HOME/miniconda3/bin/activate"
fi

# 3. Cleaning operations
echo -e "${GREEN}Cleaning caches...${NC}"
conda clean --all -y
pip cache purge

# 4. Navigator reset
echo -e "${GREEN}Resetting Navigator...${NC}"
anaconda-navigator --reset || echo "Navigator reset skipped."

# 5. Updates
echo -e "${GREEN}Updating Base environment...${NC}"
conda update -n base -c defaults conda -y && conda update anaconda -y

# 6. Reconstruction of libraries
echo -e "${GREEN}Reinstalling critical UI libraries...${NC}"
conda install -c anaconda qt pyqt -y

echo -e "${GREEN}-------------------------------------------${NC}"
echo -e "${GREEN}REPAIR COMPLETE!${NC}"
echo -e "Please run 'source ~/.bashrc' or restart your terminal."