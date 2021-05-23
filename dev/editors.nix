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
        #vscode-with-extensions: editors.vscode_UNSTABLE.nix
        #vscodium: editors.vscodium_UNSTABLE.nix
      ];
  };
}
