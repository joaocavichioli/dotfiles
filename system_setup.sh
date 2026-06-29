sudo pacman -S ly
sudo systemctl enable ly@tty1.service
sudo systemctl disable getty@tty1.service
sudo pacman -S hyprland kitty
sudo pacman -S linux-headers nvidia-open-dkms nvidia-utils lib32-nvidia-utils egl-wayland libva-nvidia-driver xorg-xwayland wayland-protocols
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay --save --answerclean All --answerdiff None
sudo pacman -S waybar rofi-wayland
sudo pacman -S swww
yay -S ags-hyprpanel-git
sudo pacman -S nautilus
sudo pacman -S webp-pixbuf-loader freetype2 ffmpegthumbnailer totem papers poppler-glib gnome-epub-thumbnailer libgsf f3d icoextract
yay -S raw-thumbnailer ffmpeg-audio-thumbnailer mcomix folderpreview

