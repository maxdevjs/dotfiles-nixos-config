{ ... }:

{
  imports = [
    #./creative.nix
    #./docker.nix
    ./docker_UNSTABLE.nix
    ./editors.nix
    #./editors.vscode_UNSTABLE.nix: ../unstable/unstable.nix
    #./editors.vscodium_UNSTABLE.nix: ../unstable/unstable.nix
    #./flutter.nix
    #./flutter_UNSTABLE.nix
    ./git.nix
    ./go.nix
    ./guile.nix
    #./ides.nix: ../unstable/unstable.nix
    #./java.nix
    #./node.nix: ../unstable/unstable.nix
    #./node_UNSTABLE.nix
    ./lsp.nix
    ./nvim_lsp.nix
    ./python.nix
    ./qt.nix
    ./rust.nix
    ./tools.nix
  ];
}
