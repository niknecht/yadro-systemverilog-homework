{
	description = "Defines an enviroment that contains all nesessary dependencies in a unified way.";

	inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

	outputs = { self, nixpkgs, flake-utils, ... }:
	flake-utils.lib.eachDefaultSystem(system:
	let
		pkgs = import nixpkgs {inherit system;};
	in 
	{
		devShells.default = pkgs.mkShell {
			packages = with pkgs; [
				iverilog
				verilator
			];
		};
	});
}
