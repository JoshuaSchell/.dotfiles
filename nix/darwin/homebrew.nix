{ ... }:
{
  homebrew = {
    enable = true;
    brews = [ ];
    taps = [ ];
    casks = [
      "anaconda"
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
      "vesktop"
      "visual-studio-code"
      "wezterm"
      "wireshark"
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
