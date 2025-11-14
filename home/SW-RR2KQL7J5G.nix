{ config
, pkgs
, lib
, flake
, ... }:

{
  imports = [
    ./default.nix
    ./features/hammerspoon
  ];

  home.username = "l.ortmeyer";
  home.homeDirectory = "/Users/l.ortmeyer";
}
