{ pkgs
, lib
, inputs
, config
, ...
}: {
  services.skhd = {
    enable = true;
    package = pkgs.skhd;
    skhdConfig = builtins.readFile ./skhdrc;
  };

  # Override launchd environment to set SHELL to dash to improve performance
  launchd.user.agents.skhd.environment.SHELL = "${pkgs.dash}/bin/dash";
}