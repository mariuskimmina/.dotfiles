{
  description = "Nixos config flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
      ];
    };
    homeConfigurations = {
      marius = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      modules = [
        ./home.nix
      ];
      };
    };
  };
}
