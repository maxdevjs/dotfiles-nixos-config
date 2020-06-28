{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        #lsd
        file
        fzf
        htop
        killall
        lf                        # (as in "list files") is a terminal file manager written in Go
        lsb-release
        ncdu
        neofetch
        nnn
        ranger
        ripgrep-all               #  Ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, and more
        silver-searcher           # 
        steam-run-native          # to run unpatched games/programs
        tree
        udiskie 
        unzip
        usbutils
        vifm
        which
        xorg.xev
        xclip
        xorg.xkill
        xsel
        zip 
      ];
  };
}
