{ lib, pkgs, ... }:

{
  env.GREET = "🐄 Welcome to the development environment for flask-ad-auth! 🐄";

  dotenv.disableHint = true;

  enterShell = ''
    # See [here](https://discourse.nixos.org/t/nixos-with-poetry-installed-pandas-libstdc-so-6-cannot-open-shared-object-file/8442/9) why this is needed
    export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [
      pkgs.stdenv.cc.cc
    ]}
    echo -e "\n$GREET\n"
  '';

  languages.python = {
    enable = true;
    version = "3.10";
    poetry = {
      enable = true;
      activate.enable = true;
      install = {
        enable = true;
      };
    };
  };

  pre-commit = {
    hooks = {
      autoflake.enable = true;
      black.enable = true;
      flynt.enable = true;
      isort.enable = true;
    };
    settings = {
      autoflake.flags = "--in-place --remove-unused-variables --ignore-init-module-imports";
      # --remove-all-unused-imports";
    };
  };
}
