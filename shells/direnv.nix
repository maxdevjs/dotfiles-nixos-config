{ config, pkgs, ... }:

#https://git.bytes.zone/brian/dotfiles.nix/src/commit/8eeabb879b377ef2940d9ee46bde178dce847b9a/dotfiles/direnv.nix
#{
#  programs.direnv = {
#      enable = true;
#      enableZshIntegration = true;
#  };
#}

{
  environment = {
    systemPackages = with pkgs;
      [
        direnv
      ];
  };
}
