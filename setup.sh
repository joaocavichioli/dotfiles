### Assumes Audio, Bluetooth etc. were properly configured during archinstall.
### Assumes `networkmanager` and `git` were chosen as additional packages or otherwise installed.

### Get packages from Official Repositories w/ `pacman`
sudo pacman -S --noconfirm \
  ly \
  hyprland hyprlock hypridle hyprpaper hyprpolkitagent \
  waybar wofi mako swww \
  xorg-xwayland wayland-protocols qt5-wayland qt6-wayland \
  nvidia-open-dkms nvidia-utils lib32-nvidia-utils egl-wayland libva-nvidia-driver \
  linux-headers base-devel \
  kitty neovim firefox nautilus \
  xdg-desktop-portal-gtk xdg-desktop-portal-hyprland wl-clipboard \
  brightnessctl thermald udisks2 fwupd xdg-user-dirs \
  noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
  inter-font ttf-liberation ttf-dejavu ttf-roboto \
  ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-font-awesome freetype2 \
  webp-pixbuf-loader ffmpegthumbnailer totem papers poppler-glib \
  gnome-epub-thumbnailer libgsf f3d icoextract

### Manage System Services w/ `systemctl`
sudo systemctl enable NetworkManager
sudo systemctl enable ly@tty1.service
sudo systemctl disable getty@tty1.service

### Install `yay`
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

### Get packages from AUR w/ `yay`
yay --save --answerclean All --answerdiff None
yay -S --noconfirm raw-thumbnailer ffmpeg-audio-thumbnailer mcomix folderpreview wayle-bin
wayle icons setup

### Overwrite default `~/.config/` files 
mkdir -p ~/.config
cp -r ~/dotfiles/config/* ~/.config/
