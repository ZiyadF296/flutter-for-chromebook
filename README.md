# Installing Flutter in Chromebook 

 #### Enable Linux on your Chromebook:
   -   Open the "Settings" app and go to the "Advanced" section.
   -   Click on "Developers" and turn on "Linux development environment."
   -   Follow the on-screen instructions to set up Linux and create a username and password.
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
- Open the Linux terminal and run the following command to get the export path:
```bash
echo export PATH=\"\$PATH:`pwd`/flutter/bin\"
```
- Copy the output of the above command.
- Run the following command to open `~/.bashrc` file.
```bash
nano ~/.bashrc
```
- Scroll to the last line by pressing the down arrow key.
- Add a new line and paste the output which you copied earlier. Use the hotkey `CTRL + SHIFT + V` to paste.
- Press `CTRL + X` and then press `y` and then press `enter` key to save the file.
- Run the following command to update the terminal environments:
```bash
source ~/.bashrc
```
- Reopen the terminal to finish the updation of environmental variables.
#### Verify the installation:
- Open the Linux terminal and run the following command:
```bash
flutter doctor
```
- This will check if Flutter is installed correctly and if there are any additional dependencies or configurations needed.


# Installing Visual Studio Code
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

# Installing Chrome browser
Open the terminal and run the following commands to install Chrome browser for development purposes:
```bash
wget -qO - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/googlechrome-linux-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/googlechrome-linux-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update

sudo apt install google-chrome-stable
```
Note: You can copy the whole code block and paste it in the terminal using the hotkey `CTRL + SHIFT + V`.
