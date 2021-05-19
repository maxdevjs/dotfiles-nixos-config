
{ config, lib, pkgs, ... }:

{

  environment.systemPackages = with pkgs;
  [
    acpi
    acpid
    # https://github.com/vagnum08/cpupower-gui
    linuxPackages_latest.cpupower
    #nixos.linuxPackages.cpupower
    #linuxPackages_latest.acpi_call
    #linuxPackages.acpi_call
    lm_sensors
    powertop
    s-tui
    tlp
    upower
  # extraModulePackages.acpi_call does not work here, it does in hardware.nix
  #] ++ [ config.boot.kernelPackages.cpupower config.boot.extraModulePackages.acpi_call ];
  ] ++ [ config.boot.kernelPackages.cpupower config.boot.kernelPackages.acpi_call ];

system.activationScripts.cpu-frequency-set =
    let max-freq = 75; # 100 = the maximum capacity of my CPU
    in lib.mkIf (max-freq != null) {
      text = ''
        max_perf_pct=/sys/devices/system/cpu/intel_pstate/max_perf_pct
        value=${toString max-freq}
        if [[ -f $max_perf_pct ]]; then
          echo $value > $max_perf_pct
        fi
      '';
      deps = [ ];
    };

  powerManagement = {
    enable = true;
    powertop.enable = false;
  };
  
  # Battery power management
  services.upower.enable = true;

  # For thinkpad
  # config.services.tlp.
  # settings Vs extraConfig
  services.tlp = {
    enable = true;
    # https://discourse.nixos.org/t/how-to-switch-cpu-governor-on-battery-power/8446/5
    extraConfig = ''
      CPU_SCALING_GOVERNOR_ON_AC=performance
      CPU_SCALING_GOVERNOR_ON_BAT=powersave
      # these returned performance also on bat
      #CPU_SCALING_GOVERNOR_ON_AC=schedutil
      #CPU_SCALING_GOVERNOR_ON_BAT=schedutil
      ENERGY_PERF_POLICY_ON_BAT=powersave
      START_CHARGE_THRESH_BAT0=40
      STOP_CHARGE_THRESH_BAT0=60
      
      
      # Runtime Power Management for PCI(e) bus devices: on=disable, auto=enable.
      # Default: on (AC), auto (BAT)
      RUNTIME_PM_ON_AC=on
      RUNTIME_PM_ON_BAT=auto
      
      # Battery feature drivers: 0=disable, 1=enable
      # Default: 1 (all)
      NATACPI_ENABLE=1
      TPACPI_ENABLE=1
      #TPSMAPI_ENABLE=1
    '';
  };
}
