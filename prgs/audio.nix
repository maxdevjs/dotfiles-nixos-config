# { config, pkgs, ...}: {
#   environment = {
#     systemPackages = with pkgs;
#       [
        #audacity
        #klystrack
        #lmms
        #milkytracker
        #mopidy
        #soundtracker
#         sunvox
#       ];
#   };
# }


{ config, pkgs, ... }:

# https://discourse.nixos.org/t/installing-only-a-single-package-from-unstable/5598/2

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {
  environment = {
    systemPackages = with pkgs; 
      [
        #audacity
        #klystrack
        #lmms
        #milkytracker
        #mopidy
        #soundtracker
        unstable.sunvox
      ];
  };
}
