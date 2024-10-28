{
  description = "Pro Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, home-manager, ... }:
  let
    configuration = { pkgs, config, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      nixpkgs.config.allowUnfree = true;
      environment.systemPackages =
        [ 
	  pkgs.gcc
	  pkgs.git
	  pkgs.kitty
	  pkgs.lazygit
	  pkgs.mkalias
	  pkgs.neovim
	  pkgs.ripgrep
	  pkgs.zoxide
        ];

      users.users.josh = {
        name = "josh";
	home = "/Users/josh";
      };

      homebrew = {
        enable = true;
	brews = [];
	casks = [
	  "android-studio"
	  "arc"
	  "brave-browser"
	  "cursor"
	  "discord"
	  "figma"
	  "obsidian"
	  "visual-studio-code"
	  "wezterm"
	  "zen-browser"
	];
	masApps = {
          "UTM" = 1538878817;
	};
	onActivation.cleanup = "zap";
	onActivation.autoUpdate = true;
	onActivation.upgrade = true;
      };

      fonts.packages = [
        (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
      ];

      system.defaults = {
        dock.autohide = true;
	finder.FXPreferredViewStyle = "clmv";
	loginwindow.GuestEnabled = false;
	NSGlobalDomain.AppleInterfaceStyle = "Dark";
      };

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      # nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Create /etc/zshrc that loads the nix-darwin environment.
      programs.zsh.enable = true;  # default shell on catalina
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#pro
    darwinConfigurations."pro" = nix-darwin.lib.darwinSystem {
      modules = [ 
        configuration
	home-manager.darwinModules.home-manager
        {
          # `home-manager` config
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.josh = import ./home.nix;
        }
	nix-homebrew.darwinModules.nix-homebrew {
	  nix-homebrew = {
	    enable = true;
	    enableRosetta = true;
	    user = "josh";
	  };
	}	
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."pro".pkgs;
  };
}
