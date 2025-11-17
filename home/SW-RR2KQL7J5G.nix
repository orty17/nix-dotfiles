{ config
, pkgs
, lib
, flake
, ... }:

{
  imports = [
    ./default.nix
  ];

  home.username = "l.ortmeyer";
  home.homeDirectory = "/Users/l.ortmeyer";
}
