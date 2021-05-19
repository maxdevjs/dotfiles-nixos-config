{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        #python37Packages.bootstrapped-pip
        #python37Packages.jedi
        #python37Packages.pip
        #python37Packages.pip-tools
        #python37Packages.pynvim
        #python37Packages.setuptools
        #python3
        #python38Packages.bootstrapped-pip
        python38Packages.jedi
        python38Packages.pip
        python38Packages.pip-tools
        python38Packages.pynvim
        python38Packages.setuptools
        python3Full
      ];
  };
}

# $ pip install --user setuptools (neovim) jedi-language-server 
