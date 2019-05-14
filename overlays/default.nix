{ config, pkgs, ... }:

{
  nixpkgs.overlays = [
    (import ./st/st.nix)
  ];

  environment.systemPackages = with pkgs; [
    st
  ];
}
