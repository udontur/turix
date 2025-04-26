{
  description = "${DESC}";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  outputs =
    { self, nixpkgs }:
    {
      packages.x86_64-linux.default =
        with import nixpkgs {
          system = "x86_64-linux";
        };
        stdenv.mkDerivation {
          name = "${NAME}";
          src = self;
          buildPhase = ''
            g++ ./src/main.cpp -o ${NAME}
          ''; # MAY NEED TO ADD -std=c++20
          installPhase = ''
            mkdir -p $out/bin
            install -D ./${NAME} $out/bin/${NAME}
          '';
        };
    };
}
