_: {
  perSystem =
    { pkgs, inputs', ... }:
    {
      devShells =
        let
          sharedDeps = with pkgs; [
            go-jsonnet
            gnumake
            tflint
            jq
            gnused
          ];
        in
        {
          default = pkgs.mkShell {
            nativeBuildInputs =
              with pkgs;
              [
                yq
                opentofu
                tofu-ls
                openbao
                sops
                authelia

                inputs'.terraform-jsonnet-gen.packages.default
              ]
              ++ sharedDeps;
          };
          test = pkgs.mkShell {
            nativeBuildInputs = sharedDeps;
          };
        };
    };
}
