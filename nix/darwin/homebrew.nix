{ ... }:
{
  homebrew = {
    enable = true;
    brews = [ ];
    taps = [ ];
    casks = [
      "brave-browser"
      "docker"
      "discord"
      "figma"
      "font-jetbrains-mono"
      "ghostty"
      "miniconda"
      "obsidian"
      "raycast"
      "skim"
      "wezterm"
      "wireshark"
      "zed"
      "zen-browser"
    ];
    masApps = { };
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
