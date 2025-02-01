{ ... }:
{
  homebrew = {
    enable = true;
    brews = [ ];
    taps = [ ];
    casks = [
      "android-studio"
      "brave-browser"
      "cursor"
      "dotnet-sdk"
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
