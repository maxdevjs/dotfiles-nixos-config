{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        #audacity
        #klystrack
        #lmms
        #milkytracker
        #mopidy
        #soundtracker
        sunvox
      ];
  };
}
