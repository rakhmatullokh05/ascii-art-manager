# #!/bin/bash

# Function to install or uninstall a package
manage_package() {
    ACTION=$1
    PACKAGE=$2

    if [[ "$ACTION" == "install" ]]; then
        if ! command -v "$PACKAGE" &> /dev/null; then
            echo "INFO: Installing $PACKAGE..."
            if [[ "$OSTYPE" == "darwin"* ]]; then
                brew install "$PACKAGE" > /dev/null
                echo "$PACKAGE installed!"
            elif command -v apt &> /dev/null; then
                sudo apt install -y "$PACKAGE" > /dev/null
                echo "$PACKAGE installed!"
            elif command -v yum &> /dev/null; then
                sudo yum install -y "$PACKAGE" > /dev/null
                echo "$PACKAGE installed!"
            else
                echo "Error: Unsupported OS or package manager!"
                exit 1
            fi
        fi
    elif [[ "$ACTION" == "uninstall" ]]; then
        if command -v "$PACKAGE" &> /dev/null; then
            echo "INFO: Removing $PACKAGE..."
            if [[ "$OSTYPE" == "darwin"* ]]; then
                brew uninstall "$PACKAGE" > /dev/null
                echo "$PACKAGE uninstalled!"
            elif command -v apt &> /dev/null; then
                sudo apt remove -y "$PACKAGE" > /dev/null
                echo "$PACKAGE removed!"
            elif command -v yum &> /dev/null; then
                sudo yum remove -y "$PACKAGE" > /dev/null
                echo "$PACKAGE removed!"
            fi
        else
            echo "INFO: $PACKAGE is not installed."
        fi
    fi
}



# Install required packages if missing
manage_package install figlet
manage_package install lolcat

# Check if user provided text, otherwise prompt for input
if [ -z "$1" ]; then
    read -p "Enter text for ASCII Art: " TEXT
else
    TEXT="$1"
fi

# Generate ASCII Art using figlet
echo "🎨 ASCII Art using figlet:"
figlet "$TEXT" | lolcat

# Ask user if they want to uninstall
read -p "Do you want to uninstall installed packages? (y/n) " UNINSTALL_CONFIRM
if [[ "$UNINSTALL_CONFIRM" == "y" ]]; then
    manage_package uninstall figlet
    manage_package uninstall lolcat
    echo "Cleanup complete!"
    exit 0
fi