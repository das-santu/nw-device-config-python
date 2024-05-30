
# Automate Network Device Configuration using Python
The purpose of this project appears to be automating the execution of commands on remote devices and logging the results in an Excel file for easy tracking and monitoring.

## Setup Environment and Run Script
Welcome to our network device configuration automation script! This **README** file will guide you through setting up the environment and running the script.

**Prerequisites**
 1. Python 3.8 or higher
    - `sudo apt-get update && sudo apt-get -y install python3`
 2. Make 4.2 or higher
    - `sudo apt-get update && sudo apt-get -y install make`

**Setup Steps:**
 1. Clone the repository to your local machine.
	- `git clone https://github.com/das-santu/nw-device-config-python.git`
    - `cd nw-device-config-python`
 2. Install python3 virtual environment.
	- `make install`
 3. Setup virtual environment and install the required libraries.
	- `make setup`
 4. Update `devices.xlsx` file with updated IP and other required details.
	- Update the `devices.xlsx` file with your specific configuration settings (e.g., device IP and credentials).
	- Place your devices list in the files/devices.xlsx file.
 3. To run the python script.
	- `make run`

**Troubleshooting**
- Check the script output for error messages.
- Verify your configuration settings and credentials.
- Ensure you have the necessary dependencies installed.

**License**
- This project is licensed under the **LICENSE**. See the **LICENSE** file for details.