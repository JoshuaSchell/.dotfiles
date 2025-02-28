{ ... }:
{
  homebrew = {
    enable = true;
    brews = [ ];
    taps = [ ];
    casks = [
      "brave-browser"
      "cursor"
      "dotnet-sdk"
      "discord"
      "docker"
      "figma"
      "font-jetbrains-mono"
      "ghostty"
      "obsidian"
      "raycast"
      "rider"
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
