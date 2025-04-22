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
      "font-jetbrains-mono"
      "ghostty"
      "obsidian"
      "raspberry-pi-imager"
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
