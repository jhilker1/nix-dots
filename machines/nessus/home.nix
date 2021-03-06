{ config, pkgs, ... }:

{

  imports = [ ./packages.nix ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "jhilker";
  home.homeDirectory = "/home/jhilker";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
  };
  
  programs.zsh = {
    enable = true;
    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
  };


  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    settings = {
      line_break.disabled = true;
    };
  };  

  programs.gpg = {
    enable = true;
  };

  programs.ssh = {
    enable = true;
  };

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

  services.gpg-agent = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    enableSshSupport = true;
    pinentryFlavor = "gtk2";
  };



}
