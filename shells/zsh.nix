{ config, pkgs, ... }:

{

  programs.zsh.enable = true;
  #programs.zsh.ohMyZsh.enable = true;

  #https://www.reddit.com/r/NixOS/comments/56jbsc/ohmyzsh/
  programs.zsh.interactiveShellInit = ''
  #export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/

  # Customize your oh-my-zsh options here
  #ZSH_THEME="agnoster"
  #plugins=(git)
  #source $HOME/oh-my-zsh/oh-my-zsh.sh
'';

programs.zsh.promptInit = ""; # Clear this to avoid a conflict with oh-my-zsh
}
