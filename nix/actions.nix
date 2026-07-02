{ inputs, ... }:
let
  inherit (inputs.nix-actions.lib) steps;

  container = {
    grustonnet = "docker://ghcr.io/koskev/grustonnet-ls:v0.6.3@sha256:f160447c45d184d660954b3b4e186e2d35bb1a4307321cdd043f6d83cd132d41";
  };
in
{
  imports = [ inputs.actions-nix.flakeModules.default ];
  flake.actions-nix = {
    pre-commit.enable = true;
    defaultValues = {
      jobs = {
        runs-on = "ubuntu-latest";
      };
    };
    workflows = {
      ".github/workflows/build.yaml" = {
        on = {
          push = { };
          pull_request = { };
        };
        jobs = {
          build.steps = [
            steps.checkout
            steps.installNix
            {
              run = "nix develop . --command make build";
            }
          ];
        };
      };
      ".github/workflows/lint.yaml" = {
        name = "Lint";
        on = {
          push = { };
          pull_request = { };
        };
        jobs = {
          nix.steps = [
            steps.checkout
            steps.installNix
            {
              run = "nix flake check";
            }
          ];
          jsonnet.steps = [
            steps.checkout
            {
              uses = container.grustonnet;
              "with" = {
                entrypoint = "grustonnet-lint";
                args = "-j lib argocd lib";
              };
            }
          ];
          tflint.steps = [
            steps.checkout
            steps.installNix
            {
              run = "nix develop . --command make lint-tf";
            }
          ];
        };
      };
    };
  };
}
