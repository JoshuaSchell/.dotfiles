{ ... }:
{
  homebrew = {
    enable = true;
    brews = [ ];
    taps = [ ];
    casks = [
      "brave-browser"
      "cursor"
      "discord"
      "dotnet-sdk"
      "docker"
      "figma"
      "font-jetbrains-mono"
      "ghostty"
      "obsidian"
      "raycast"
      "rider"
      "visual-studio-code"
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
