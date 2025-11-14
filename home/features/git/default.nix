{ pkgs, ... }: {

  home.packages = with pkgs; [
    delta
  ];

  programs.git = {
    enable = true;
    package = pkgs.git;
    lfs = {
      enable = true;
    };

    signing.key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINYjT8cU5eTRgLdCsMWcSET/ztQ4gJCCkHuuVbFXMUzD l.ortmeyer@shopware.com";
    signing.signByDefault = true;

    settings = {
      user.email = "l.ortmeyer@shopware.com";
      user.name = "Lennard Ortmeyer";

      push.autoSetupRemote = true;
      init.defaultBranch = "main";
      pull.rebase = true;
      rebase.autoStash = true;
      push.default = "simple";
      fetch.prune = true;

      gpg.format = "ssh";
    };
  };

  programs.lazygit = {
    enable = true;
    settings = {
      promptToReturnFromSubprocess = false;
      git = {
        overrideGpg = true;
        paging = {
          colorArg = "always";
          pager = "delta --dark --paging=never";
        };
      };
    };
  };

  home.file = {
    ".ssh/allowed_signers".text = "l.ortmeyer@shopware.com namespaces=\"git\" ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINYjT8cU5eTRgLdCsMWcSET/ztQ4gJCCkHuuVbFXMUzD l.ortmeyer@shopware.com";
  };
}
