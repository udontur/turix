{
  description = "NixOS Workstation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    hyprland.url="github:hyprwm/Hyprland"; 
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, hyprland, ... }@inputs: 
  let
    system="x86_64-linux";
    pkgs=nixpkgs.legacyPackages.${system};
  in
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      
    specialArgs={inherit inputs;};
      modules = [
        ./nixos/config.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs={inherit inputs;};
          home-manager.backupFileExtension="backup";
          home-manager.users.udontur = import ./home/home.nix;
        }
      ];
    };
  };
}
