# [bspwm] Wires
![bluu](https://github.com/palmdrop/dots/blob/master/.github/bspwm3.png)

Repository for personal config files, scripts, and wallpapers. Configs can be found under `.config`, scripts under `.local/bin` and wallpapers under `.config/wall`. Additional scripts might be found under `.local/scripts`. The `.github` directory is simply there to prevent this readme and any pictures from cluttering my `~`.

Important software:
* [bspwm](https://github.com/baskerville/bspwm) (window manager)
* [sxhkd](https://github.com/baskerville/sxhkd) (keybind daemon)
* [polybar](https://github.com/polybar/polybar) (status bar)
* [nvim](https://github.com/neovim/neovim) (text editor)
* [rofi](https://github.com/davatorium/rofi) (application launcher, menu, window switcher)
* [dunst](https://github.com/dunst-project/dunst) (notification daemon)
* urxvt (terminal emulator)

I've recently started moving some of my bspwm scripts and tools to a separate repository, which can be found [here](https://github.com/palmdrop/bspwm-tools). 

Since many scripts, mine and others, use dmenu, I've made a small script called `dmenu` which simply calls rofi in dmenu mode and passes along all arguments. 

NOTE: I no longer use most of the suckless software I previously used. Although I had a lot of fun patching dwm, dmenu, and other utilities, it ended up consuming too much of my time. In addition to this, some of the suckless developers seemed to engage in some [fascist behavior](https://twitter.com/pid_eins/status/1113738766471057408), which made me think twice about promoting their work. Regardless, my old dwm build can be found [here](https://github.com/palmdrop/dwm), and [this](https://github.com/palmdrop/dots/tree/proxy-love) is my most up-to-date configs from when I still used dwm.
