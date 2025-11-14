{ pkgs, config, ... }: {

  programs.go = {
    enable = true;
    package = pkgs.go_1_25;
    env.GOPATH = "/Users/l.ortmeyer/.go";
  };
}
