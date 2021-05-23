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
        unstable.google-chrome
        unstable.google-chrome-dev
        unstable.google-chrome-beta
        unstable.jetbrains.pycharm-community
        unstable.kitty
        unstable.nodejs-14_x
        unstable.vscode
        unstable.vscodium
      ];
  };
}
