{config, pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "Jacob Hilker";
    userEmail = "jacob.hilker2@gmail.com";
    signing = {
      key = "jacob.hilker2@gmail.com";
      signByDefault = true;
    };
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

}
