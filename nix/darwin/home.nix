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
    ".config/ghostty".source = ./../../.config/ghostty;
    ".config/nvim".source = ./../../.config/nvim;
    ".config/ohmyposh".source = ./../../.config/ohmyposh;
    ".config/helix".source = ./../../.config/helix;
    ".config/tmux".source = ./../../.config/tmux;
  };
  home.sessionVariables = {
    EDITOR = "Neovim";
  };
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
