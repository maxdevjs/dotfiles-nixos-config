# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./desktop-environments/default.nix
      ./dev/dev.nix
      ./msgs/default.nix
      ./shells/default.nix
      ./prgs/commandline.nix
      ./prgs/multimedia.nix
      ./prgs/non-free.nix
      ./prgs/terminal.nix
      ./services/default.nix
      ./users/max.nix
      ./overlays/default.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  #boot.loader.grub.efiSupport = true;
  #boot.loader.grub.efiInstallAsRemovable = true;
  #boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  #boot.loader.grub.device = "nodev"; # or "nodev" for efi only
  #boot.loader.grub.enableCryptodisk = true;
  boot.loader.grub.useOSProber = true;

  boot.initrd.luks.devices = [
    {
      name = "nixos-enc";
      device = "/dev/sda3";
      preLVM = true;
      allowDiscards = true;
    }
  ];

  #networking.hostName = "max-nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

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
  # time.timeZone = "Europe/Amsterdam";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    baobab firefox gparted gwenview networkmanager nix-prefetch-scripts ntfs3g
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
  # networking.firewall.enable = falseterminal

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  #networking.networkmanager.enable = true;

  networking = {
    networkmanager.enable = true;

    hostName = "max-nixos";
    usePredictableInterfaceNames = false;

    #interfaces.wlp3s0.ipv4.addresses = [ {
    #interfaces.wlp3s0.ipv4.addresses = [ {
    #interfaces.wlp3s0.ip4 = [ {

    #  address = "192.168.1.199";
    #  prefixLength = 24;
    #} ];
    #defaultGateway = "192.168.1.11";

    #nameservers = [
    #  "8.8.8.8"
    #];

    #firewall = {
    #  enable = false;
    #  allowPing = false;
    #};
  };

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable touchpad support.
  services.xserver.libinput.enable = true;


  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "18.09"; # Did you read the comment?

}
