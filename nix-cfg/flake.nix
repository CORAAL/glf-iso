{
  description = "Configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    glf.url = "github:CORAAL/glf-config";
  };

  outputs = { self, nixpkgs, glf }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosConfigurations.iso = pkgs.lib.nixosSystem {
        inherit system;
        modules = [
	  glf.nixosModules.glf-configuration
	  ./configuration.nix
        ];
      };
    };
}

