# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.efiInstallAsRemovable = true;
  boot.loader.efi.efiSysMountPoint = "/boot/EFI";
  boot.loader.grub.enableCryptodisk = true;
  
  boot.initrd.luks.devices = [
    {
        name = "nixos-enc";
        device = "/dev/sda2";
        preLVM = true;
        allowDiscards = true;
    }
  ];
  
  #boot.initrd.luks.devices.crypted.device = "/dev/disk/by-uuid/7cc391ec-53ef-4f66-b36f-3cbaa8be639d";
  #fileSystems."/".device = "/dev/mapper/crypted";

  # Define on which hard drive you want to install Grub.
  #boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.grub.device = "nodev"; # or "nodev" for efi only

  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  networking = {
    networkmanager.enable = true;
    hostName = "max-nixos";
    usePredictableInterfaceNames = false;
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
  # time.timeZone = "Europe/Amsterdam";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    firefox git kate kitty networkmanager nix-prefetch-scripts ntfs3g opera wget vim
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
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "eurosign:e";

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.users.jane = {
  #   isNormalUser = true;
  #   extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  # };


users.enforceIdUniqueness = true;

  users.extraUsers = {
    max = {
      isNormalUser = true;
      home = "/home/max";
      description = "Massimiliano Giroldi";
      extraGroups = [ "audio" "disk" "docker" "networkmanager" "video" "wheel"];
      uid = 1000;
      #initialHashedPassword = "";
      shell = pkgs.zsh;
    };
  }; 
  users.groups = [
    { gid = 1000; name = "max";  }
  ];



  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.03"; # Did you read the comment?

}
