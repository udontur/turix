{
  description = "DESC";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  outputs = { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in{
      packages = forAllSystems(system:
        let 
          pkgs = nixpkgs.legacyPackages.${system};
        in{
          default =
            pkgs.stdenv.mkDerivation {
              # Meta Data
              pname = "NAME";
              version = "VER";
              
              src = self;

              nativeBuildInputs = with pkgs;[
                # Packages used by the builder
              ];
              buildInputs = with pkgs;[
                # Packages used by the program
              ];

              # Build
              buildPhase = ''
                cmake ..
                cmake --build .
              '';
              installPhase = ''
              runHook preInstall
                mkdir -p $out/bin
                install -Dm755 ./EXEC $out/bin/EXEC
                runHook postInstall
              '';
            };
        }
      );
    };
}

    
