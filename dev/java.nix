{ config, pkgs, ...}: {
    
  nixpkgs.config.oraclejdk.accept_license = true;
  
  environment = {
    
    systemPackages = with pkgs;
      [
        
        jdk12
      ];
  };
}
