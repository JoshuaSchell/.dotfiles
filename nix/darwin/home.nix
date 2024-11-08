{ config, pkgs, lib, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
in
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "josh";
  home.homeDirectory = "/Users/josh";

  xdg.enable = true;

  programs = {
    fzf = import ../home/fzf.nix {inherit pkgs;};
    oh-my-posh = import ../home/oh-my-posh.nix {inherit pkgs;};
    zoxide = (import ../home/zoxide.nix {inherit config pkgs;});
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
