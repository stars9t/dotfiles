# Dotfiles Starset
My environment settings are collected here
- Vim (.vimrc)
- Emacs (.emacs)
- Alacritty (.alacritty.yml)
- I3wm (i3/config, i3status/config)
- ZSH (.zshrc with oh-my-zsh)

> At the moment I am using Mac Os, not GNU / Linux.
> It is possible that some i3wm settings will not work quite correctly.
> I also used i3-gaps instead of i3wm.
> Sometimes I use VSCode with standard settings.
> The only exceptions are theme (onedark) and vim plugin

If you have problem with Font-Manager(error whle loading shared libraries: libwebkit2gtk-4.0) - Install the library:
`sudo pacman -S webkit2gtk`

For For the monitors to work properly, you need to install dm. Exapmle:
`sudo pacman -S lightdm`
`sudo pacman -S lightdm-gtk-greeter`
In config "/etc/lightdm/lightdm.conf" write
> [Seat:\*]
> greeter-session=lightdm-gtk-greeter

And after enable lightdm:
`systemctl start lightdm.service && systemctl enable lightdm.service`

For configure lightdm-gtk-greeter install package:
`yaourt lightdm-gtk-greeter-settints`

Good themes for gtk3:
https://www.gnome-look.org/p/1280977/
https://www.gnome-look.org/p/1253999/
https://www.gnome-look.org/p/1275087/
https://www.gnome-look.org/p/1099856/
https://www.gnome-look.org/p/1441725/

Good icons for gtk3:
https://www.gnome-look.org/s/Gnome/p/1296407
https://www.gnome-look.org/s/Gnome/p/1166289
https://www.gnome-look.org/s/Gnome/p/1359276

### Enjoy your use!
