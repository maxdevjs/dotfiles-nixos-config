# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./insecure/insecure.nix
      ./hardware-configuration.nix
      ./browsers/default.nix
      ./desktop-environments/default.nix
      ./dev/default.nix
      ./games/default.nix
      ./msgs/default.nix
      ./shells/default.nix
      ./prgs/default.nix
      ./services/default.nix
      ./system/default.nix
      ./users/default.nix
      ./overlays/default.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.efiSysMountPoint = "/boot/EFI";
  boot.loader.grub.enableCryptodisk = true;
  boot.loader.grub.useOSProber = true;
  # Add memtest86
  boot.loader.grub.memtest86.enable = true;

  # grub 2.04
  # https://github.com/NixOS/nixpkgs/issues/61718
  boot.loader.grub.efiInstallAsRemovable = true;
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = false;

 
  # Define on which hard drive you want to install Grub.
  #boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.grub.device = "nodev"; # or "nodev" for efi only
  
#   boot.initrd.luks.devices = [
#     {
#         name = "nixos-enc";
#         device = "/dev/sda2";
#         preLVM = true;
#         allowDiscards = true;
#     }
#   ];

  boot.initrd.luks.devices =
    {
        nixos-enc = {
          device = "/dev/sda2";
          preLVM = true;
          allowDiscards = true;
        };
    };

  networking = {
    networkmanager.enable = true;
    hostName = "max-nixos";
    usePredictableInterfaceNames = false;
    
    #firewall.enable = false;
  };

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    kdeconnect discover networkmanager nix-prefetch-scripts ntfs3g
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  #services.xserver.layout = "us";
  #services.xserver.xkbOptions = "eurosign:e";

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
#   services.xserver.desktopManager.plasma5.enable = true;

  #system.autoUpgrade.enable = true;
  # system.autoUpgrade.channel = https://nixos.org/channels/nixos-19.09;
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    # channel = https://nixos.org/channels/nixos-20.03;
  };
  
  # https://nixos.wiki/wiki/Storage_optimization
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
};
    
  
  #   nix.nixPath = [
  #     "nixos-config=/etc/nixos/configuration.nix"
  #   ];
  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "20.09"; # Did you read the comment?

}
