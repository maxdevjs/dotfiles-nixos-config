{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        darktable
        deadbeef-with-plugins
        digikam
        ffmpeg-full
        frei0r
        kdeApplications.kdenlive
        krita
        gimp
        inkscape
        mpv
        olive-editor
        zathura
        youtubeDL
      ];
  };
}
