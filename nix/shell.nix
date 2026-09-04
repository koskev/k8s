_: {
  perSystem =
    {
      pkgs,
      lib,
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
          cloudProviderKindWithoutDocker = pkgs.writeShellApplication {
            name = "cloud-provider-kind";

            runtimeInputs = with pkgs; [
              cloud-provider-kind
              podman
            ];
            text = ''
              export PATH=${pkgs.podman}/bin
              KIND_EXPERIMENTAL_PROVIDER="podman" ${lib.getExe pkgs.cloud-provider-kind} "$@"
            '';
          };
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
                cloudProviderKindWithoutDocker

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
