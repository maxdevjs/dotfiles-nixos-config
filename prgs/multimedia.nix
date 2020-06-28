{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        deadbeef-with-plugins
        ffmpeg-full
        frei0r
        kdeApplications.kdenlive
        krita
        gimp
        inkscape
        mpv
        olive-editor
        zathura
      ];
  };
}
