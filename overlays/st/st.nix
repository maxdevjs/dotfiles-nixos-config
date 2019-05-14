self: super:
#with import <nixpkgs> {};

{
  st = super.st.overrideAttrs (attrs: {
    src = /home/max/dev/st;

    patches = [];
    configFile = builtins.readFile /home/max/dev/st/config.h;
  });
}
