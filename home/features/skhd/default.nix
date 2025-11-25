{ pkgs, ... }: {

  home.packages = with pkgs; [
    koekeishiya/formulae/skhd
  ];

    home.file = {
    ".config/skhd/skhdrc".source = ./skhdrc;
  };
}