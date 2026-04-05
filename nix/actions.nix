{ inputs, ... }:
let
  actions = {
    checkout = "actions/checkout@93cb6efe18208431cddfb8368fd83d5badbf9bfd"; # v5
  };
  container = {
    grustonnet = "docker://ghcr.io/koskev/grustonnet-ls@sha256:554f50e6be93023d696cea2b1f5a0378066f96cd9cb7055644674d71dc4c2e98"; # v0.4.1
    tflint = "docker://ghcr.io/terraform-linters/tflint@sha256:b835d64d66abfdbc146694b918eb3cd733ec772465ad511464d4e8bebbdd6732";
  };

  steps = {
    checkout-full = {
      name = "checkout full";
      uses = actions.checkout;
      "with".fetch-depth = 0;
    };
    checkout = {
      name = "checkout";
      uses = actions.checkout;
    };
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
