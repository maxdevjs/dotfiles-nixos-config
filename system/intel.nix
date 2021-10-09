{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        intel-gpu-tools
        vaapi-intel-hybrid
        vaapiIntel
      ];
  };
}
