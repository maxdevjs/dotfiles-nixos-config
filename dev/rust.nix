 {config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        rustup
      ];
  };
}

# $ rustup toolchain install nightly 
# $ rustup component add rust-src rust-analysis
# https://github.com/rust-analyzer/rust-analyzer/issues/1142
# $ git clone https://github.com/rust-analyzer/rust-analyzer
# $ cd rust-analyzer && cargo build
