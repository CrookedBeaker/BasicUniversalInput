# Beaker's Basic Universal Input
An asset pack for Gamemaker:Studio 2.3+

**NOTE: This asset pack only handles one controller at a time, so it is best used for games where only one player is expected.**

## How to Use
* Download the asset pack from the releases section or the itch.io page
* Open your project in Gamemaker:Studio
* Go to Tools > Import Local Package and import the package
* Include obj_gamecontroller in the first room of your game or include its Async:System event in another persistant object
* You're all set! Just use the multiInput function or one of the included macros where you need to process input.

## Included Components
* scr_input - Contains the methods used to process input
* scr_macros - Sample macros for ease of use
* obj_gamecontroller - Handles finding controllers connected to the system to use for input processing
