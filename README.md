# ASCII Art Manager

**ASCII Art Manager** is a Bash script that generates colorful ASCII art using `figlet` and `lolcat`. It automatically installs dependencies if missing and provides an option to uninstall them after use. Compatible with macOS, Ubuntu/Debian, and CentOS/RHEL.

## Features

- 📌 Installs `figlet` and `lolcat` automatically if not installed
- 🎨 Generates ASCII art from user input
- 💻 Supports package installation and uninstallation for:
  - macOS (Homebrew)
  - Ubuntu/Debian (APT)
  - CentOS/RHEL (YUM)
- 🛠️ Option to remove installed packages after execution

## Prerequisites

- 🖥️ Bash shell
- 📦 A package manager (`brew`, `apt`, or `yum`)

## Installation

Clone the repository and navigate to the project directory:

```sh
git clone https://github.com/rakhmatullokh05/ascii-art-manager.git
cd ascii-art-manager
```

## Usage

Make the script executable:

```sh
chmod +x ascii-art.sh
```

Run the script with an optional text argument:

```sh
./ascii-art.sh 'Hello, World!'
```

If no argument is provided, the script will prompt for input:

```sh
./ascii-art.sh
Enter text for ASCII Art: YourText
```

### Uninstall Dependencies

After generating the ASCII art, the script prompts you to remove the installed packages. You can also uninstall them manually:

```sh
./ascii-art.sh
Do you want to uninstall installed packages? (y/n) y
```

## Example Output

```
🎨 ASCII Art using figlet:
 _   _      _ _        __        __         _     _ _ 
| | | | ___| | | ___   \ \      / /__  _ __| | __| | |
| |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` | |
|  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |_|
|_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_(_)
```

## License

📜 This project is open-source under the **MIT License**.

## Author

👤 **rakhmatullokh05 (https://github.com/rakhmatullokh05)**
