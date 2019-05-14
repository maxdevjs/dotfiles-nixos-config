{ config, pkgs, ... }:

{
  services.redshift = {
    enable = true;
    temperature.night = 4500;
    brightness.night = "0.8";
    provider = "geoclue2";
  };
}
