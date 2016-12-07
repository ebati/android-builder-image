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
* If it is possible cache `.gradle` folder and sdk tools.
  ```console
  $ mkdir -p .gradle/build-tools
  $ mkdir -p .gradle/platforms
  $ mkdir -p .gradle/extras
  $ ln -s $PWD/.gradle/build-tools $ANDROID_HOME/build-tools
  $ ln -s $PWD/.gradle/platforms $ANDROID_HOME/platforms
  $ ln -s $PWD/.gradle/extras $ANDROID_HOME/extras
  $ ln -s $PWD/accepted-licenses $ANDROID_HOME/licenses
  ```
