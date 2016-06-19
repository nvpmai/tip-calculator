# Pre-work - *Tip calculator*

**Tip calculator** is a tip calculator application for iOS.

Submitted by: **Nguyen Van Phuong Mai**

Time spent: **10** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [X] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

## Video Walkthrough 

> HINT: You can put a `walkthrough.gif` file in your project folder, add to git, and use the following syntax to embed it: 
 
> `![Video Walkthrough](walkthrough.gif)` 
 
> You can also upload your image to imgur.com and embed the link here.

Here's a walkthrough of implemented user stories:

![Video Walkthrough](http://i1310.photobucket.com/albums/s647/timonbumba1/tip_cal_zps10tsjzmf.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

* The bill amount's expire time is counted since user's last input
* Once user chooses one of the percentages in the UI Segmented Control, the default percentage is inactive. 
User has to restart the app to get it back

## License

    Copyright [2016] [Nguyen Van Phuong Mai]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.