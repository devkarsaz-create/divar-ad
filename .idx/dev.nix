# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  # ADDED: Go for the backend, Air for live-reloading, and Docker for future use.
  packages = [
    pkgs.nodejs_20,
    pkgs.go_1_22,
    pkgs.air,
    pkgs.docker
  ];

  # Sets environment variables in the workspace
  env = {};

  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    # ADDED: Go and Docker extensions for better IDE support.
    extensions = [
      "vue.volar",
      "google.gemini-cli-vscode-ide-companion",
      "golang.go",
      "ms-azuretools.vscode-docker"
    ];

    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        npm-install = "npm ci --no-audit --prefer-offline --no-progress --timing";
        # ADDED: Command to install Go dependencies.
        go-mod-tidy = "cd backend && go mod tidy";
        # Open editors for the following files by default, if they exist:
        # UPDATED: To also open the main backend file.
        default.openFiles = [ "src/App.vue", "backend/main.go" ];
      };
      # To run something each time the workspace is (re)started, use the `onStart` hook
    };

    # Enable previews and customize configuration
    previews = {
      enable = true;
      previews = {
        # UPDATED: The existing web preview for the frontend.
        web = {
          label = "Frontend (Vue)"; # Adding a clearer label
          command = ["npm", "run", "dev", "--", "--port", "$PORT", "--host", "0.0.0.0"];
          manager = "web";
          # ADDED: This injects the backend's URL into the frontend environment.
          env = {
            VITE_API_BASE_URL = "$IDE_PREVIEW_URL_BACKEND_API";
          };
        };
        # ADDED: A new, separate preview for the Go backend API.
        backend-api = {
          label = "Backend API (Go)";
          command = [ "air", "-c", "backend/.air.toml" ];
          manager = "web";
        };
      };
    };
  };
}

