# Project 4 - *Snap Hunt*

Submitted by: **Santos O. Martínez Braña**

**Snap Hunt** is an app that allows you to take photos and mark them on a scavenger hunt.

Time spent: **5** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] App displays list of hard-coded tasks.
- [x] When a task is tapped it navigates the user to a task detail view.
- [x] When user adds photo to complete the tasks, it marks the task as complete.
- [x] When adding photo of task, the location is added.
- [x] User returns to home page (list of tasks) and the status of your task is updated to complete.
 
The following **optional** features are implemented:

- [x] User can launch camera to snap a picture.

The following **additional** features are implemented:

- [x] User can take snapped picture and submit it to complete a task.
- [X] Light and Dark mode support.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

<!-- Replace this with whatever GIF tool you used! -->
<!-- Note: Used MP4 video format instead of GIF as the file size was way smaller at a higher quality.-->
Video created with:
- Recorded in QuickTime Player
- Edited in Final Cut Pro
- Compressor for file format conversion
<!-- Recommended tools:
[Kap](https://getkap.co/) for macOS
[ScreenToGif](https://www.screentogif.com/) for Windows
[peek](https://github.com/phw/peek) for Linux. -->

## Notes

Describe any challenges encountered while building the app.

Working with the camera was very hard in the sense that to actually test the camera working where it takes the picture and uses it, I had to go through so much trouble, where validation was used and other things.

For the purpose of this project I went ahead and removed the signing from my account. So if you wish to test this feature working you must sign the application with your account and then format your device to be in developer mode. From here you must go into device management and trust the publisher to allow access to the app. 

From here the app works as expected and the camera can be used to take a picture and complete the hunt.

I didn't have enough time to properly handle the errors and warnings when a user does not provide the appropriate permissions. So keep in mind to allow access so that it doesn't fail unexpectedly.

## License

    Copyright 2023 Santos O. Martínez Braña

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.