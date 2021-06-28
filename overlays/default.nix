{ config, pkgs, ... }:

{
  nixpkgs.overlays = [
    #(import ./st/st.nix)
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];

  environment.systemPackages = with pkgs; [
    #st
  ];
}
