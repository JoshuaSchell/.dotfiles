{ ... }:
{
  homebrew = {
    enable = true;
    brews = [ ];
    taps = [ ];
    casks = [
      "brave-browser"
      "cursor"
      "docker"
      "font-jetbrains-mono"
      "ghostty"
      "obsidian"
      "raycast"
      "rider"
      "vesktop"
      "visual-studio-code"
      "wezterm"
      "zed"
      "zen-browser"
      "zoom"
    ];
    masApps = { };
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
