{ config, pkgs, ... }: 

# https://nixos.wiki/wiki/Fish
{
  programs.fish = {
    enable = true;
    #programs.fish.promptInit = ''
      # https://github.com/haslersn/any-nix-shell
      #TODO: not working here
      #any-nix-shell fish --info-right | source
#     '';
    #autosuggestions.enable = true;
    #enableCompletion = true;
    #syntaxHighlighting.enable = true;
  };
}
