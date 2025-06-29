{
  description = "NixOS Workstation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    hyprland.url = "github:hyprwm/Hyprland";
    ossdmk.url = "github:udontur/ossdmk";
    hyprshot.url = "github:udontur/hyprshot";
    wakatime-ls = {
      url = "github:mrnossiom/wakatime-ls";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprfocus.url = "github:daxisunder/hyprfocus";
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
        laptop = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ../../nixos/laptop.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit inputs; };
              home-manager.backupFileExtension = "backup";
              home-manager.users.udontur = import ../../home/laptop.nix;
            }
          ];
        };
      };
    };
}
