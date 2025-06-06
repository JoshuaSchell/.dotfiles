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
      "dotnet-sdk"
      "font-jetbrains-mono"
      "ghostty"
      "obsidian"
      "raycast"
      "rider"
      "vesktop"
      "visual-studio-code"
      "wezterm"
      "zed"
      "zen"
      "zoom"
    ];
    masApps = { };
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
