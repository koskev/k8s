{ inputs, ... }:
let
  inherit (inputs.nix-actions.lib) steps;

  container = {
    grustonnet = "docker://ghcr.io/koskev/grustonnet-ls:v0.6.3@sha256:f160447c45d184d660954b3b4e186e2d35bb1a4307321cdd043f6d83cd132d41";
    tflint = "docker://ghcr.io/terraform-linters/tflint@sha256:b835d64d66abfdbc146694b918eb3cd733ec772465ad511464d4e8bebbdd6732";
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
            {
              uses = container.tflint;
              "with" = {
                entrypoint = "tflint";
                args = "--chdir tf";
              };
            }
          ];
        };
      };
    };
  };
}
