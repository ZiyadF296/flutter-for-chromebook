# Installing Flutter in Chromebook 

 #### Enable Linux on your Chromebook:
   -   Open the "Settings" app and go to the "Advanced" section.
   -   Click on "Developers" and turn on "Linux development environment."
   -   Follow the on-screen instructions to set up Linux and create a username and password.
## Automatic Installation
To install Flutter on your Chromebook automatically, follow these steps:

1.  Open the Terminal app on your Chromebook.
    
2.  Copy and paste the following command into the Terminal and press Enter:
```bash
curl -sSL https://raw.githubusercontent.com/ShootDot/flutter-for-chromebook/main/install_flutter.sh | bash
```
3.  This command will download the installation script from GitHub and run it on your Chromebook.
    
4.  The script will download and install all necessary dependencies, including the latest version of Flutter.
    
5.  Once the installation is complete, the script will add the Flutter bin directory to your system's path.

## Manual Installation
 #### Install the necessary dependencies:
-   Open the Linux terminal and enter the following commands:
```bash
sudo apt update
sudo apt install curl git unzip xz-utils zip libglu1-mesa openjdk-11-jdk wget nano
```
-  This will install the required packages and dependencies for Flutter.
#### Download Flutter:
-  Open the Linux terminal and enter the follow command to download Flutter:
```bash
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.7.5-stable.tar.xz
```
#### Extract the Flutter archive:
- Open the Linux terminal and run the following command to extract the Flutter archive.
```bash
tar xf flutter_linux_3.7.5-stable.tar.xz
```
- This will create a directory called `flutter`.
#### Set up the Flutter environment:
- Open the Linux terminal and run the following command to add flutter to the path:
```bash
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> "$HOME/.bashrc"
```
- Copy the output of the above command.
- Run the following command to update the terminal environments:
```bash
source "$HOME/.bashrc"
```
- Reopen the terminal to finish the updation of environmental variables.
#### Verify the installation:
- Open the Linux terminal and run the following command:
```bash
flutter doctor
```
- This will check if Flutter is installed correctly and if there are any additional dependencies or configurations needed.


### Installing Visual Studio Code
Open the terminal and run the following commands to install Visual Studio Code IDE:
```bash
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft-archive-keyring.gpg

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https

sudo apt-get update

sudo apt-get install code
```
Note: You can copy the whole code block and paste it in the terminal using the hotkey `CTRL + SHIFT + V`.

### Installing Chrome browser
Open the terminal and run the following commands to install Chrome browser for development purposes:
```bash
wget -qO - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/googlechrome-linux-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/googlechrome-linux-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update

sudo apt install google-chrome-stable
```
Note: You can copy the whole code block and paste it in the terminal using the hotkey `CTRL + SHIFT + V`.
