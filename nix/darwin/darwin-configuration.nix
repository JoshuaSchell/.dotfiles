{ pkgs, ... }:
{
  imports = [ ./homebrew.nix ];
  environment.systemPackages = with pkgs; [
    alejandra
    bat
    cmake
    eza
    fastfetch
    fd
    fzf
    gh
    git
    gopls
    lazygit
    lua-language-server
    neovim
    nil
    nixfmt-rfc-style
    oh-my-posh
    pyright
    postgresql
    ripgrep
    ruff
    texlab
    texliveFull
    wget
    zoxide
  ];
  system.defaults = {
    dock.autohide = true;
    dock.persistent-apps = [
      "/System/Applications/System Settings.app"
      "/System/Applications/Messages.app"
      "/System/Applications/Mail.app"
      "/System/Applications/Calendar.app"
      "/Applications/WezTerm.app"
      "/Applications/Brave Browser.app"
      "/Applications/Zen Browser.app"
      "/Applications/Zed.app"
      "/Applications/Obsidian.app"
      "/Applications/Discord.app"
    ];
    dock.show-recents = false;
    finder.FXPreferredViewStyle = "clmv";
    loginwindow.GuestEnabled = false;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.KeyRepeat = 2;
  };
}
