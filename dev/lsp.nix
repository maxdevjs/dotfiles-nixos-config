{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        #https://github.com/neovim/neovim/wiki/FAQ
        
        #TODO: check nvim_lsp
        
        
        # Providers
        #https://github.com/neovim/node-client
        #nodePackages_latest.neovim
        
        #https://github.com/neovim/pynvim
        #https://github.com/neovim/neovim/wiki/FAQ#python-support-isnt-working
        #python37Packages.pynvim
        python38Packages.pynvim
        
        # Language servers
        #https://github.com/neovim/nvim-lspconfig
        #nodePackages_latest.pyright
        #nodePackages_latest.typescript-language-server
        
        # Plugins
        #https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
        #https://github.com/hrsh7th/nvim-compe
        #vimPlugins.nvim-compe
      ];
  };
}
