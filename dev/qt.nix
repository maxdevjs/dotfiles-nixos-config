{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        dbus
        dbus_tools
        libsForQt5.kdbusaddons
        qt5.qttools             #qdbus
      ];
  };
}
