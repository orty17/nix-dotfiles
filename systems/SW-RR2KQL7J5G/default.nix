{ pkgs
, home-manager
, flake
, lib
, config
, ...
}: {
  imports = [
    ../shared/aerospace.nix
    ../shared/brew.nix
    ../shared/system.nix
    ../shared/fonts.nix
  ];

  system.stateVersion = 5;
  system.primaryUser = "l.ortmeyer";

  ids.gids.nixbuild = 30000;

  users.users."l.ortmeyer" = {
    home = "/Users/l.ortmeyer";
    shell = "${pkgs.fish}/bin/fish";
  };

  home-manager.users."l.ortmeyer" = {
    imports = [
      ../../home/SW-RR2KQL7J5G.nix
    ];
  };

  environment.systemPackages = with pkgs; [
    raycast
  ];

  nixpkgs.config.allowUnfree = true;

  programs.fish.enable = true;
  environment.shells = [ "${pkgs.fish}/bin/fish" ];

  documentation.enable = false;
  documentation.man.enable = true;

  time.timeZone = "Europe/Berlin";
  
  nix.enable = false;
}
