# Pre-work - *Tip Calculator* -Updated

**Tip Calculator - Updated** is an updated version of tip calculator application for iOS.

Submitted by: **Kevin Lin**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Switch between normal and dark mode 
- [x] User can control the tip percentage using slider or the fixed amount segment control
- [x] Number pads instead of a normal keyboard for input
- [x] Spliting bill amount using stepper with display 
- [x] Added done button in tool bar above number pads

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/Jos0UVQ.gif)



GIF created with [EZGIF.com](https://ezgif.com).

## Notes

This is an updated version of the original tip calculator, with new features such as Dark Mode, Slider, splitting feature, number pads and a Done button in the toolbar above it.

New features were implemented after hours of searching and browsing on developer.apple.com. 

There are still rooms for improvement for this revision, the original idea is to set the slider to have an increment of 1 but didn't work after numerous tries, showing 00% instead. 

The tap recognizer issue still presents, users are able to call the keyboard after pressing the Bill Amount Input but were having issue to close the keyboard when tapping elsewhere, that's the main reason the Done button was added other than aesthetic purposes. 

## License

    Copyright 2021 Kevin Lin

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
