{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        go        # golang programming language
        dep       # golang dependency manager
        gotools   # golang cli helper (auto importing, etC)
        golangci-lint
      ];
  };
}
