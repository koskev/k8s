_: {
  perSystem =
    {
      pkgs,
      inputs',
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
          #fixedMinikube = pkgs.minikube.overrideAttrs (oldAttrs: {
          #  buildPhase = ''
          #    make
          #  '';
          #});
        in
        {
          default = pkgs.mkShell {
            nativeBuildInputs =
              with pkgs;
              [
                #fixedMinikube
                yq
                opentofu
                tofu-ls
                openbao
                sops
                authelia
                kind

                inputs'.terraform-jsonnet-gen.packages.default
              ]
              ++ sharedDeps;
            JSONNET_PATH = ".:lib";
            KIND_EXPERIMENTAL_PROVIDER = "podman";
          };
          test = pkgs.mkShell {
            nativeBuildInputs = sharedDeps;
          };
        };
    };
}
