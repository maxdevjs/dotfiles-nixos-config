{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        darktable
        deadbeef-with-plugins
        digikam
        ffmpeg-full
        frei0r
        glxinfo
        handbrake
        #jack2: ../unstable/unstable.nix
        kdeApplications.kdenlive
        krita
        #gimp: ../unstable/unstable.nix
        #inkscape: ../unstable/unstable.nix
        mpv
        olive-editor
        #simplescreenrecorder: ../unstable/unstable.nix
        zathura
        youtubeDL
      ];
  };
}
