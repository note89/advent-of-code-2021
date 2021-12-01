let
  project = import ./default.nix;
  pkgs = import <nixpkgs> {};
in
  project.shellFor {
    tools = {
      cabal = "3.2.0.0";
      hlint = "latest";
      haskell-language-server = "latest";
    };
    buildInputs = [ pkgs.zlib ];
  }
