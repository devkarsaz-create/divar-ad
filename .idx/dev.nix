# dev.nix - Final & Robust Configuration (Corrected Nix Syntax)
{ pkgs, ... }:
{
  # Use the stable Nix channel for reliable packages.
  channel = "stable-24.05";

  # 1. System Packages: List items are space-separated, NOT comma-separated.
  packages = [
    pkgs.nodejs_20    # For the Vue.js frontend (Vite, npm)
    pkgs.go_1_22      # For the Go backend
    pkgs.air          # For live-reloading the Go backend
    pkgs.docker       # For future containerization needs
  ];

  # 2. Environment Variables: Can be set globally here if needed.
  env = {};

  idx = {
    # 3. VS Code Extensions: List items are space-separated.
    extensions = [
      "vue.volar"
      "google.gemini-cli-vscode-ide-companion"
      "golang.go"
      "ms-azuretools.vscode-docker"
    ];

    # 4. Workspace Setup: Commands that run to prepare the environment.
    workspace = {
      # These commands run only once when the workspace is first created.
      onCreate = {
        npm-install = "npm ci --no-audit --prefer-offline";
        go-dependencies = "cd backend && go mod tidy";
        # Open key files on startup.
        default.openFiles = [ "src/App.vue" "backend/main.go" ".idx/dev.nix" ];
      };
    };

    # 5. Previews: Defines how our frontend and backend are run and displayed.
    previews = {
      enable = true;
      previews = {
        # Frontend Preview (Vue.js)
        web = {
          label = "Frontend (Vue)";
          command = ["npm" "run" "dev" "--" "--port" "$PORT" "--host" "0.0.0.0"];
          manager = "web";
          # CRITICAL: This injects the backend's URL into the frontend, making them connect.
          env = {
            VITE_API_BASE_URL = "$IDE_PREVIEW_URL_BACKEND_API";
          };
        };

        # Backend Preview (Go)
        backend-api = {
          label = "Backend API (Go)";
          # IMPROVEMENT: Using a shell script for a more robust startup.
          command = [ 
            "sh" 
            "-c" 
            "cd backend && echo 'Ensuring Go dependencies are up to date...' && go mod tidy && echo 'Starting Go backend with Air live-reload...' && air"
          ];
          manager = "web";
        };
      };
    };
  };
}
