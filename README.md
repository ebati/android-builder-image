# android-builder-image

Docker image for gradle project building in CI

## Usage

Copy accepted licenses from the development machine`$ANDROID_HOME/licenses` to project repo. In CI job:

* Link licenses folder to `$ANDROID_HOME/licenses`

  ```console
  $ ln -s accepted-licenses $ANDROID_HOME/licenses
  ```

* Gradle will download the required packages and if all licenses are accepted it will use these packages without error.

  ```
  $ bash gradlew assembleDebug`
  ```

* The output folder is `app/build/outputs/`
* If it is possible cache `.gradle` folder.
