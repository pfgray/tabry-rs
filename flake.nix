{
  description = "Tabry in Rust";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      pkgsFor = nixpkgs.legacyPackages;
    in {
      packages = forAllSystems (system: {
        default = pkgsFor.${system}.callPackage ./. { };
      });

      devShell = forAllSystems (system: 
      let 
        pkgs = nixpkgs.legacyPackages.${system};
       in 
         pkgs.mkShell {
          packages = with pkgs; [
            rustfmt
            cargo
            rustc
          ];
          shellHook = ''
          '';
        });
      
      
    };
}
