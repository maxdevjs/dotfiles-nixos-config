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
        #patchelf: getting info about '/nix/store/03qqrijxqbgyp01zxr8n8klm2ch0icqk-google-chrome-dev-94.0.4603.0/share/google/chrome-unstable/crashpad_handler': No such file or directory
        #builder for '/nix/store/g7drfpyms4pnkqa2nrq2j711lfpgh5r1-google-chrome-dev-94.0.4603.0.drv' failed with exit code 1
        unstable.google-chrome-dev
        unstable.google-chrome-beta
        unstable.inkscape
        unstable.jack2
        unstable.jetbrains.pycharm-community
        unstable.kitty
        unstable.neovim
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
