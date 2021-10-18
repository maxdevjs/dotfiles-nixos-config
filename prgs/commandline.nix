{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        bat
        exa
        #lsd
        file
        fzf
        htop
        jq
        killall
        lf                        # (as in "list files") is a terminal file manager written in Go
        lsb-release
        ncdu
        neofetch
        nnn
        ranger
        ripgrep
        ripgrep-all               #  Ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, and more
        # skim
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
