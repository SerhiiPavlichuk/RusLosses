<!-- PROJECT LOGO -->

  <p align="center">
    This is a test task for <a href="https://macpaw.com/careers/macOS-intern-2022"> MacPaw</a>
  </p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About The Project](#about-the-project)
* [Features](#features)
* [Technologies Used](#technologies-used)
* [MIT License](https://github.com/SerhiiPavlichuk/RusLosses/blob/main/LICENSE)

<!-- ABOUT THE PROJECT -->
## About The Project

This application shows the loss of the enemy in personnel and equipment.

## Features
- Dark, Light appearances
- Custom TabBar with 2 screens:
   - Catalog Screen:
        - Icon with defeated opponents, by clicking on it, you can go to another screen with a storyboard of enemy losses by day.
        - List of invasion days, clicking on a day opens a screen with a list of defeated equipments.
        - Sort button, when pressed, an alert with 2 actions appears. You can sort lists from 1 day to the last and vice versa.
   - Map Screen:
        - When you go to the screen, an animated Activity indicator is displayed until the map is loaded.
        - Map made with WKWebView


## Technologies Used

* MVVM app architecture
* Parsing JSON from [test task link for equipment](https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_equipment.json) and [test task link for personnel](https://raw.githubusercontent.com/MacPaw/2022-Ukraine-Russia-War-Dataset/main/data/russia_losses_personnel.json) transforming it to fit the required model.
* Activity indicator when map loading
* WKWebView with map from [deepstatemap](https://deepstatemap.live/#8/49.877/36.606)
* Keeping a clear separation of concerns between classes (API managers, model controllers and carving datasources away from view controllers).
* Autolayout
* Custom UICollectionViewCell and UITableViewCell
* UI written programmatically
* Animation
