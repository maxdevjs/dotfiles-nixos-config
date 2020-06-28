{ config, pkgs, ...}: {
#   environment = {
#     systemPackages = with pkgs;
#       [
        fonts = {
          #enableCoreFonts = true;
          enableFontDir = true;
          fonts = with pkgs; [
            corefonts         # Microsoft free fonts
            fira              # Monospace
            hack-font
            inconsolata       # Monospace
            #nerdfonts
            powerline-fonts
            ubuntu_font_family
            unifont           # Inaternational languages
          ];
        };
#       ];
#   };
}
