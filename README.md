# HereCam
Camera for making yearly timelapses of a single room. Uses a Pi zero 2w, camera, and UPS. Inspired by the movie _Here_ (2024).

## Goals
- [ ] Create a device that takes a picture at set intervals over the course of a year.
- [ ] Store images on an SD card or SSD with easy removal.
- [ ] Set up nightly automated backups to external server over wifi.
- [ ] Be able to compile a years worth of images into a single timeplapse video
- [ ] The timeplapse must have a reasonable play time (<1hr) and good quality.
- [ ] Must be able to operate without AC power for at least 12 hrs.
- [ ] Under $300 (2026 USD)

## Components
- Raspberry Pi Zero 2W - small form factor, wireless, enough processing power for timelapse compilation and image capture, and sd card slot.
- 75° Pi Camera module - FOV should be wide enough for being in the corner of a room, with IR filter.
- UPS hat - back-up power for when the device is unplugged, uses a lipo battery.
- SD card - capable of containing Pi OS and room for images, highly reliable card.
(see BOM for details of all components)

## Calculations

1. Length of Timelapse and number of images
   The first step was to find out how long I would want the timplapse to be and the framerate of the movie, which would also tell me the number of images that would be taken each year. I knew I did not want to capture images of every single hour, because the room I would be mounting the camera would have no one in it late at night (a living room). So I went with 20 hours per day (6am-2am). I also knew I wanted at least 24fps.
   
   <img src="images/FPS and time Calc.png" width="80%">
   
3. 

## Prototype
