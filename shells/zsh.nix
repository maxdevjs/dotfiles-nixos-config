{ config, pkgs, ... }: 

{
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    
    #https://www.reddit.com/r/NixOS/comments/56jbsc/ohmyzsh/
    interactiveShellInit = "";
    promptInit = ""; # Clear this to avoid a conflict with oh-my-zsh

    ohMyZsh = {
      enable = true;
      theme = "agnoster";
      custom = "~/System/dotfiles/shells/zsh/oh-my-zsh/custom";
#       theme = "$ZSH_CUSTOM/themes/max_0008.zsh-theme";
#       export ZSH_CUSTOM=$HOME/System/dotfiles/shells/zsh/oh-my-zsh/custom;
#       theme = $ZSH_CUSTOM/themes/max_0008;
      plugins = ["docker" "git" "python"];
      #export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/;
      

  #     source $HOME/oh-my-zsh/oh-my-zsh.sh
  #     source $ZSH/oh-my-zsh.sh;
    };
  };
}
