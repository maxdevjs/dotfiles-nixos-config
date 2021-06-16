{ config, pkgs, ...}: {
#   environment = {
#     systemPackages = with pkgs;
#       [
        fonts = {
          #enableCoreFonts = true;
          enableFontDir = true;
          fonts = with pkgs; [
            corefonts         # Microsoft free fonts
            cozette
            fira              # Monospace
            hack-font
            inconsolata       # Monospace
            nerdfonts
            jetbrains-mono
            powerline-fonts
            ubuntu_font_family
            unifont           # International languages
            victor-mono
          ];
        };
#       ];
#   };
}
