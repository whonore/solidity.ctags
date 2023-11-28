{
  description = "Universal Ctags optlib parser for Solidity";

  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils, }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in let solidity-ctags = pkgs.callPackage ./. { };
      in {
        packages = {
          inherit solidity-ctags;
          default = solidity-ctags;
        };
      });
}
