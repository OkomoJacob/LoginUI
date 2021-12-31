# Mobile Login User Interface
[![image](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub repo size](https://img.shields.io/github/repo-size/OkomoJacob/LoginUI?color=green-yellow&logo=github&logoColor=blue)
![GitHub language count](https://img.shields.io/github/languages/count/OkomoJacob/LoginUI?logo=visual-studio-code) 
![GitHub top language](https://img.shields.io/github/languages/top/OkomoJacob/LoginUI)
![GitHub last commit](https://img.shields.io/github/last-commit/OkomoJacob/LoginUI?style=plastic&color=brightgreen) 
![GitHub commit activity](https://img.shields.io/github/commit-activity/w/OkomoJacob/LoginUI.svg?style=flat)
![Forks](https://img.shields.io/github/forks/OkomoJacob/LoginUI?style=social) 
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://reactjs.org/docs/how-to-contribute.html#your-first-pull-request)

#### Be my friend on twitter
[![image](https://img.shields.io/twitter/follow/okomojacob?style=social)](https://twitter.com/okomojacob)

A new Flutter project for building Login/Sign up/Logout Screens.
This project is a starting point for a Flutter application.

## Getting Started with Sign in, Sign Up
Follow these basic commands to get this app running in your local machine 

1. clone/dowload this repo by runing this command in your cmd/terminal/command line
```shell
$ git clone https://github.com/OkomoJacob/LoginUI.git
```
2. change directory into this app's folder
```shell
$ cd LoginUI/
```
3. To ensure you're set up and ready to run this application in your Lacal machine, test your flutter environment with this command
```shell
$ flutter doctor
```

4. If you found no issues, then you're safe and Ok to test this application locally.Run command 5 below and go ahead. If not, kindly check the [getting started with flutter in Linux](https://docs.flutter.dev/get-started/install/linux) or [getting started with flutter in windows](https://docs.flutter.dev/get-started/install/windows) or [getting started with Flutter in Mac](https://docs.flutter.dev/get-started/install/macos) or [getting started with flutter in Chrome OS](https://docs.flutter.dev/get-started/install/chromeos). This is Operatring System dependent.

5.Test this Application in your machinie. I've tested it and it's OK.
```shell
$ flutter test
```
6. With your Mobile Emulator(Simulator for iOS) running in the background, `run` this application in your machinie to get results like these attached below.
```shell
$ flutter run
```

## Adding to Firebase (Backend as a service)

Firebase is a Backend as a Service platform owned and operated by Google Iinc. It saves the backend developement and configurations.

### 1. Register app
- Head to [Google Firebase Console](https://console.firebase.google.com/u/0/) and create a new project.
- While in project overview, click the android icon to add firebase to your project.
- In your local project, navigate to `uber_driver/android/app/main/AndroidManifest.xml` file and under the `<manifest` tag, copy the contents in the marks and paste as your android package name

```dart
package="com.example.app_name">
```

### 2. Download the config files

### 3. Add Firebase SDK

### 4. Add initialization code

### 5. Get back to firebase console

Set these rule to your Cloud Firestore to enable read and write if requested is not null.

```dart
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if request.auth != null;
    }
  }
}
```
Feel free to tweak opr change the source code as you wish!

<img src = "https://github.com/OkomoJacob/LoginUI/blob/main/snips/loginScreen.PNG"><img src = "https://github.com/OkomoJacob/LoginUI/blob/main/snips/registrationScreen.PNG"><img src = "https://github.com/OkomoJacob/LoginUI/blob/main/snips/logOut.PNG">

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

