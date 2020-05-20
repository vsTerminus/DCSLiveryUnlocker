# DCSLiveryUnlocker
Unlock modded DCS World liveries so they work with any country

I strongly recommend you pair this with OvGME or JSGME so you can point it at a single folder which contains nothing but your community liveries.

## Run from .exe

First, close DCS and disable all of your liveries in OvGME/JSGME.

Now extract the .exe to your hard drive somewhere and run it. It should pop up a window asking you to select a directory. Point it at your OvGME or JSGME folder. If you don't use those, tell it where your mods are installed.

![Mod Folder Select Window](/img/select.png)

You'll see a bunch of files scroll by in a terminal window. These are the files the script is modifying to unlock them for all countries.

When it finishes you'll see "Press any key to continue...". This gives you a chance to look over the list of files, and when you're ready just press a key to close the window.

![Press any key to continue](/img/done.png)

Now re-enable all your mods in OvGME/JSGME. All your community liveries should work with any country now.


## Run from source

You need Perl >=5.10 and cpanminus installed. On Windows I suggest Strawberry perl, it comes with everything you need.

Install the dependencies with `cpanm --installdeps .`

Run it with `./unlock_all_skins.pl "dir"` where dir is the name of your OvGME or JSGME mods folder.


