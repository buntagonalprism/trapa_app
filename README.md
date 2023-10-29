# Trapa App

The Travel Research and Planning App (Trapa) is a tool for people who like to plan their holidays, and have reached the end of what a spreadsheet can do. 

## Setup

### Secrets File
Sensitive values are defined in a JSON file and passed to flutter build/run using a Dart define argument with `--dart-define-from-file`. 

The JSON file is stored as a flattened string in Github Secrets. To run the app locally, the following secrets should be copied from Github Secrets, into corresponding files named `<SECRET_NAME>.json`:
- `app_secrets_local`
- `app_secrets_dev`
- `app_secrets_prod`

The JSON secret files are stored as a single line string in Github Secrets due to issues with Github Actions unnecessarily censoring special characters if a secret contains formatted JSON: [See here for details](https://github.com/google-github-actions/auth/blob/main/docs/TROUBLESHOOTING.md#aggressive--replacement-in-logs). This issue does not impact running locally, so it is safe to format the JSON file locally with newlines and indentation if you prefer. 

To run Trapa against your own Firebase project, use the following template below for the `app_secrets_<ENV>.json` file

```json
{
    "firebaseProjectId": "<VALUE>",
    "firebaseAuthDomain": "<VALUE>",
    "firebaseStorageBucket": "<VALUE>",
    "firebaseMessagingSenderId": "<VALUE>",
    "firebaseAndroidApiKey": "<VALUE>",
    "firebaseAndroidAppId": "<VALUE>",
    "firebaseWebApiKey": "<VALUE>",
    "firebaseWebAppId": "<VALUE>",
    "firebaseWebMeasurementId": "<VALUE>",
    "firebaseGoogleAuthWebClientId": "<VALUE>"
}
```

Appropriate values can be generated by using the `flutterfire` CLI tool, and then copying the values from the generated `.dart` file into the secrets file. 

```
flutterfire configure --out=lib\firebase\firebase_options_dev.dart --android-app-id=my.app.id
```

**What is a sensitive value?**
Google documentation states that Firebase API keys are safe to included in code or checked in to source control: https://firebase.google.com/docs/projects/api-keys#general-info. Furthermore, in general a public application cannot be considered capable of keeping any values secret. A determined attacker will always be able to find a way to extract them, e.g. by decompiling the application, or by inspecting outbound network packets. 

As such, it might seem pointless to designate any values as secret/sensitive in a public application. However, because this repo itself is public, these API keys and Firebase configuration values have been hidden to encourage anyone cloning the repo to run it against their own Firebase project. 



## Deployment
**Dev pipeline:** `build-and-deploy-dev.yaml`
Each commit on master is:
- Given a build number `<MAJOR>.<MINOR>.<PATCH>+<PRERELEASE>`. The major, minor, and patch version numbers are the same as the last production release. The prerelease number is auto-incremented, resetting to 0 after each prod relase. 
- Tested, built, and deployed to dev environment

**Prod pipeline:** `build-and-deploy-prod.yaml`
To release to production, create a branch named `release/v<MAJOR>.<MINOR>`. Each commit on a branch with this pattern is:
- Tagged with a tag `v<MAJOR>.<MINOR>.<PATCH>` where the patch is auto-incremented
- Tested, built, and deployed to the production environment


### Pipeline Configuration
1. Generate firebase service accounts for each environment:
    1. `firebase login`
    2. `firebase use <my-project>`
    3. `firebase init hosting:github`. Press "y", then "enter". There should be a message "Uploaded service account JSON to GitHub as secret FIREBASE_SERVICE_ACCOUNT_<PROJECT_NAME>". You can now quit the process (the remaining setup steps run by this command continue to generate github actions pipelines to deploy to Firebase hosting, which are not required)
2. Set a FLUTTER_VERSION under the variables configuration

