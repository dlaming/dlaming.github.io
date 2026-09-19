{
  description = "Personal site";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    multiverse.url = "github:fzakaria/nixpkgs-multiverse";
  };

  outputs = { self, nixpkgs, flake-utils, multiverse }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        mv = multiverse.multiverse.${system};

        node = mv.version "nodejs" "24.19.0";
        npm = mv.version "pnpm" "11.27.0";
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            node
            pnpm
            git
          ];
        };

        packages.default = pkgs.buildNpmPackage {
          pname = "personal-site";
          version = "0.1.0";
          src = ./.;
          npmDepsHash = "";
          buildPhase = ''
            npm run build
          '';
          installPhase = ''
            mkdir -p $out
            cp -r dist/* $out/
          '';
        };
      }
    );
}
