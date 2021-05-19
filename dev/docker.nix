{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        docker
        #docker-compose
        #docker-machine
        #kubernetes
      ];
  };
  virtualisation.docker.enable = true;
}
