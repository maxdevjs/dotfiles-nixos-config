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
        vimHugeX 
        #vscode-with-extensions
      ];
  };
}
