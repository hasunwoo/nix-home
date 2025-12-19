{
    description = "Home Manager configuration";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, ... }:
    let
        system = "x86_64-linux";
        username = "hasunwoo";
    in
    {
        homeConfigurations.${username} =
            home-manager.lib.homeManagerConfiguration {
                inherit system;

                pkgs = import nixpkgs {
                    inherit system;
                };

                modules = [
                    ./home.nix
                ];
            };
    };
}

