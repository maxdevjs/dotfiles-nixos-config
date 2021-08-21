{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        brackets
        kakoune
        kate
        
        # https://github.com/nix-community/neovim-nightly-overlay
        #neovim-nightly # it compiles from sources, time to switch to unstable
        #vimHugeX
      ];
  };
}
