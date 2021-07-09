{ config, pkgs, ... }:

# https://discourse.nixos.org/t/installing-only-a-single-package-from-unstable/5598/2

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {
  environment = {
    systemPackages = with pkgs; 
      [
        #unstable.babelfish
        unstable.fish
        #unstable.fishPlugins.fzf-fish
        #unstable.fishPlugins.done
        #oh-my-git
        unstable.gimp
        unstable.google-chrome
        unstable.google-chrome-dev
        unstable.google-chrome-beta
        unstable.inkscape
        unstable.jack2
        unstable.jetbrains.pycharm-community
        unstable.kitty
        unstable.nodejs-14_x
        unstable.nvd # Nix/NixOS package version diff tool
        unstable.simplescreenrecorder
        unstable.sumneko-lua-language-server
        unstable.vscode
        unstable.vscodium
        unstable.yadm
      ];
  };
}
