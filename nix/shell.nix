_: {
  perSystem =
    { pkgs, ... }:
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
              ]
              ++ sharedDeps;
          };
          test = pkgs.mkShell {
            nativeBuildInputs = sharedDeps;
          };
        };
    };
}
