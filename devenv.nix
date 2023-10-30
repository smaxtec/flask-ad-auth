{ ... }:

{
  env.GREET = "🐄 Welcome to the development environment for flask-ad-auth! 🐄";

  dotenv.disableHint = true;

  enterShell = ''
    echo -e "\n$GREET\n"
  '';

  languages.python = {
    enable = true;
    version = "3.11";
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
      autoflake.flags = "--in-place --remove-unused-variables --ignore-init-module-imports --remove-all-unused-imports";
    };
  };
}
