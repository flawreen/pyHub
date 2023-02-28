# pyHub
Python GUI App that sets the environment for my first year labs

![Screenshot_20230226_233431](https://user-images.githubusercontent.com/83332450/221438740-c1b11fb1-65a0-4720-ac20-97f9dbf11c6e.png)


### To run the app, you need:
- python3 `sudo apt install python3`
- pip `sudo apt install python3-pip`
- flet `pip install flet` (prerequisites for flet: https://flet.dev/docs/guides/python/getting-started/#linux)
- JetBrains PyCharm, CLion, WebStorm, DataGrip https://www.jetbrains.com/products/

### Navigate to the folder where you installed the app, then:
- run `chmod u+x run_first.sh`
- `bash run_first.sh` or `./run_first.sh`
- to run the app `python3 pyHub.py`

### To run the app every boot:
- `touch .config/autostart/pyHub.desktop`
- `nano .config/autostart/pyHub.desktop`
- and paste in the file:

[Desktop Entry]\
Type=Application\
Name=pyHub\
Exec=/usr/bin/python3 path/to/pyHub.py
