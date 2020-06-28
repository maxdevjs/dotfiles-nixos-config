{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        kate
        neovim
        neovim-qt
        python37Packages.pynvim
        vimHugeX 
        vscodium
      ];
  };
}
