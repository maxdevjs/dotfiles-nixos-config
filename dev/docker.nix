{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        docker
        #docker-compose
        #kubernetes
      ];
  };
  virtualisation.docker.enable = true;
}
