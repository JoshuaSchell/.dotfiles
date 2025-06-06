{ pkgs, ... }:
{
  imports = [ ./homebrew.nix ];
  environment.systemPackages = with pkgs; [
    alejandra
    bat
    btop
    cmake
    eza
    fastfetch
    fd
    fzf
    gh
    git
    go
    gopls
    helix
    jupyter
    lazydocker
    lazygit
    lldb
    lua-language-server
    neovim
    nil
    oh-my-posh
    postgresql
    pyright
    ripgrep
    ruff
    rustup
    tinymist
    tmux
    typst
    wget
    yazi
    zig
    zls
    zoxide
  ];
  system.primaryUser = "josh";
  system.defaults = {
    dock.autohide = true;
    dock.persistent-apps = [
      "/System/Applications/System Settings.app"
      "/System/Applications/Messages.app"
      "/System/Applications/Mail.app"
      "/System/Applications/Calendar.app"
      "/Applications/Ghostty.app"
      "/Applications/WezTerm.app"
      "/Applications/Brave Browser.app"
      "/Applications/Zen.app"
      "/Applications/Zed.app"
      "/Applications/Obsidian.app"
      "/Applications/Vesktop.app"
    ];
    dock.show-recents = false;
    finder.FXPreferredViewStyle = "clmv";
    loginwindow.GuestEnabled = false;

  };
}
