{
  description = "github:udontur/umpire Nix flake";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  
  outputs = { self, nixpkgs, ... }:
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
        pkgs = import nixpkgs {
          inherit system;
        };
        PACKAGE_src = builtins.fetchTarball{
          url = "TARBALL";
          sha256 = "sha256:GET_HASH";
          # nix-prefetch-url --unpack THE_URL
        };
                
      in{
        default =
          pkgs.stdenv.mkDerivation rec {
            pname = "NAME";
            version = "VERSION_WITHOUT_V";
            src = self;

            # Packages used by the builder
            nativeBuildInputs = with pkgs;[
              cmake
              gnumake
              git
              # Add the compilter
            ];

            configurePhase = ''
              export PACKAGE_src=${PACKAGE}_src}
            '';
            
            cmakeFlags = [
              "-DCMAKE_BUILD_TYPE=Release"
              "-DPACKAGE_src=${PACKAGE_src}"
            ];

            buildPhase = ''
              mkdir -p build
              cd build
              cmake ..
              cmake --build .
            '';
              
            
            installPhase = ''
              runHook preInstall
              
              mkdir -p $out/bin
              install -Dm755 ./EXEC $out/bin/EXEC

              runHook postInstall
            '';

            
            meta = {
              homepage = "https://github.com/udontur/NAME";
              description = "DESC";
              mainProgram = "EXEC";
              license = pkgs.lib.licenses.mit; # or gpl3
              platforms = pkgs.lib.platforms.all;
            };
          };
        }
      );
    };
}
