{ config, pkgs, callPackages, ...}: {
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.oraclejdk.accept_license = true;
  environment = {
    systemPackages = with pkgs;
      if config.services.xserver.enable then
        [
          discord
          #google-chrome: ../unstable/unstable.nix
          opera
          slack
          sublime3
          tdesktop
          #vscode: ../unstable/unstable.nix
        ]
      else
        [];
  };
}


#   environment.systemPackages =
#     if config.services.xserver.enable then
#       [
#         pkgs.discord
#         pkgs.google-chrome
#         pkgs.opera
#         pkgs.slack
#         pkgs.tdesktop
#         pkgs.vscode
#       ]
#     else
#       [];
# }
