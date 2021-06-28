{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        brackets
        kakoune
        kate
        
        # https://github.com/nix-community/neovim-nightly-overlay
        neovim-nightly # activated in dev/editors.nix
        #neovim
        #vimHugeX 
        #vscode-with-extensions: editors.vscode_UNSTABLE.nix
        #vscodium: editors.vscodium_UNSTABLE.nix
      ];
  };
}
