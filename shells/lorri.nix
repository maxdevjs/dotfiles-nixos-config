{ config, pkgs, ... }:

{
  #environment = {
  #  systemPackages = with pkgs;
  #    [
  #      lorri
  #    ];
  #};
  services.lorri = {
  #Note: There's a known issue preventing the lorri daemon 
  #from starting automatically upon installation. 
  #Until it's resolved, you'll have to reload the user daemon by hand 
  #by running systemctl --user daemon-reload, or reboot.
  #services.lorri.enable = true;
    enable = true;
  };
}
