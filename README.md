# DCSLiveryUnlocker
Unlock modded DCS World liveries so they work with any country

## Run from .exe

Assuming your mods folder is named "`_JSGME`" or "`_OvGME`", just drop this into your DCS install folder and run it.

If it is named something else, you'll need to run the .exe from the command line and give it the name of your mods folder.


## Run from source

You need Perl >=5.10 and cpanminus installed. On Windows I suggest Strawberry perl, it comes with everything you need.

Install the dependencies with `cpanm --installdeps .`

Run it with `./unlock_all_skins.pl "dir"` where dir is the name of your OvGME or JSGME mods folder.


