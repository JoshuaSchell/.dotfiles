{ ... }:
{
  homebrew = {
    enable = true;
    brews = [
      "dotnet"
    ];
    taps = [ ];
    casks = [
      "android-studio"
      "brave-browser"
      "cursor"
      "discord"
      "docker"
      "figma"
      "font-jetbrains-mono"
      "ghostty"
      "miniconda"
      "obsidian"
      "raycast"
      "rider"
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
