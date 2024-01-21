{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv";
  };

  outputs = inputs @ {
    flake-parts,
    nixpkgs,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [inputs.devenv.flakeModule];
      systems = nixpkgs.lib.systems.flakeExposed;
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: let
        lib = nixpkgs.lib;
      in {
        # This sets `pkgs` to a nixpkgs with allowUnfree option set.
        _module.args.pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        devenv.shells.default = {
          # https://devenv.sh/reference/options/
          packages = with pkgs; [nodePackages.prettier];

          #           hooks = {
          #             prettier.enable = true;
          #             cspell.enable = true;
          #           };

          env = {};

          languages.javascript.enable = true;
          # languages.javascript.npm.install.enable = true; # only for projects that have their package.json at the same level as flake.nix
          # services.mongodb.enable = false;

          scripts."start:watch".exec = "npm --prefix $DEVENV_ROOT/framework run start:watch";
          scripts."start".exec = "npm --prefix $DEVENV_ROOT/framework run start";
          scripts."build-framework".exec = "npm --prefix $DEVENV_ROOT/framework run build-all";

          enterShell = ''
            # devenv up
          '';
        };
      };
    };
}
