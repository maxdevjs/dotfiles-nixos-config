{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        brackets
        kakoune
        kate
        neovim
        neovim-qt
        #python37Packages.pynvim
        #python38Packages.pynvim
        vimHugeX 
        vscodium
      ];
  };
}
