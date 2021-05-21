{ ... }:

{
  imports = [
    #./creative.nix
    #./docker.nix
    ./docker_UNSTABLE.nix
    ./editors.nix
    ./editors.vscode_UNSTABLE.nix
    ./editors.vscodium_UNSTABLE.nix
    #./flutter.nix
    #./flutter_UNSTABLE.nix
    ./git.nix
    ./go.nix
    ./guile.nix
    ./ides.nix
    #./java.nix
    #./node.nix
    ./node_UNSTABLE.nix
    ./nvim_lsp.nix
    ./python.nix
    ./qt.nix
    ./rust.nix
    ./tools.nix
  ];
}
