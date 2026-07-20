_: {
  perSystem =
    {
      pkgs,
      inputs',
      self',
      ...
    }:
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
            JSONNET_PATH = "${self'.packages.bindings}:.:lib";
          };
          test = pkgs.mkShell {
            nativeBuildInputs = sharedDeps;
          };
        };
    };
}
