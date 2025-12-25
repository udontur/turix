{
  description = "NixOS Workstation";

  inputs = {
    # System
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Apps
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    osc.url = "github:udontur/osc";
    umpire.url = "github:udontur/umpire";
    leetcode.url = "github:udontur/leetcode-desktop";

    # Quickshell
    dgop = {
      url = "github:AvengeMedia/dgop";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.dgop.follows = "dgop";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      hyprland,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        workstation = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ../../nixos/workstation.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit inputs; };
              home-manager.backupFileExtension = "backup";
              home-manager.users.udontur = import ../../home/workstation.nix;
            }
          ];
        };
      };
    };
}
