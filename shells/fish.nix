{ config, pkgs, ... }: 

# https://nixos.wiki/wiki/Fish
{
  programs.fish = {
    enable = true;
    #autosuggestions.enable = true;
    #enableCompletion = true;
    #syntaxHighlighting.enable = true;
    };
  };
}
