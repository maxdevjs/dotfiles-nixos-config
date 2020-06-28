{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        processing
      ];
  };
}
