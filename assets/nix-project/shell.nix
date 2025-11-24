let
    # nixpkgs 25.05 pinned
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/3acb677ea67d4c6218f33de0db0955f116b7588c.tar.gz";
    pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShellNoCC {
    packages = with pkgs; [
        ruff
        uv
        python312
        zstd
        gcc-unwrapped
        gcc.cc
        glibc
        zlib
    ];
    shellHook = ''
        uv venv
        source .venv/bin/activate
        uv sync

        alias fl="ruff check --fix . & ruff format ."
        alias run="uv run src/main.py"
    '';
}