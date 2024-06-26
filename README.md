# sensors app [on hold]
This app is integrated in [bunch-linux](https://github.com/waelkarman/bunch-linux-manifests) project.

<img src="doc/screen.png" width="450" height="350">

The sensors-app is not a standalone app. It requires the sensors services to work.<br>
The following diagram shows the summary of the communication layout implemented into the sensors-app.

<img src="https://github.com/waelkarman/bunch-linux-manifests/blob/main/docs/miscellaneous/sensorappipc.png" width="400" height="300">

The *sensor-app* has a grid and each supported sensor have a spot in the grid. The sensor-app allows the user to check the status of the supported sensors and control them directly from the UI. For example connecting a button as aforementioned, and pressing it, is possible to read on the sensors-app the state of the button as Pressed/Released furthermore touching on the sensor-app the spot reserved to the passive buzzer the buzzer will ring.<br>

