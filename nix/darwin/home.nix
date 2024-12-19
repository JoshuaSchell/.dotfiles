{ ... }:
{
  home.username = "josh";
  home.homeDirectory = "/Users/josh";
  home.packages = [ ];
  home.sessionPath = [ ];
  home.file = {
    ".gitconfig".source = ./../../.gitconfig;
    ".gitignore".source = ./../../.gitignore;
    ".wezterm.lua".source = ./../../.wezterm.lua;
    ".zshrc".source = ./../../.zshrc;
    ".config/ohmyposh/ohmyposh.toml".source = ./../../.config/ohmyposh/ohmyposh.toml;
    ".config/tmux/tmux.conf".source = ./../../.config/tmux/tmux.conf;
  };
  home.sessionVariables = {
    EDITOR = "Neovim";
  };
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
