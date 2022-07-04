{config, lib, pkgs, ...}: {
  home.packages = with pkgs; [
    emacs
    # Doom Emacs Dependencies
     binutils
    (ripgrep.override { withPCRE2 = true; })
    gnutls
    fd
    imagemagick
    zstd
    nodePackages.javascript-typescript-langserver
    sqlite
    editorconfig-core-c
    emacs-all-the-icons-fonts
  ];
}
