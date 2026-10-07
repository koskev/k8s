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

          tfRc = pkgs.writeTextFile {
            name = "terraformrc";
            text = ''
              provider_installation {
                # Force our custom provider to load from the Nix store mirror
                filesystem_mirror {
                  path    = "${tofu-plugin}"
                  include = ["koskev/bookorbit"]
                }
                
                # Allow all other providers to fetch from the standard internet registry
                direct {
                  exclude = ["koskev/bookorbit"]
                }
              }

            '';
          };
          tofu-plugin = pkgs.stdenv.mkDerivation {
            name = "custom-tofu";
            src = inputs'.provider-bookorbit.packages.default;

            installPhase =
              let
                tfDir = "registry.opentofu.org/koskev/bookorbit/3.0.0/linux_amd64";
              in
              ''
                 ls -hal $src/bin
                 mkdir -p $out/${tfDir}
                 cp $src/bin/bookorbit-provider $out/${tfDir}/terraform-provider-bookorbit_3.0.0
                #exit 1
              '';
          };

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
                podman

                inputs'.terraform-jsonnet-gen.packages.default
              ]
              ++ sharedDeps;
            TF_CLI_CONFIG_FILE = "${tfRc}";
            JSONNET_PATH = ".:lib";
            KIND_EXPERIMENTAL_PROVIDER = "podman";
            #NIX_TERRAFORM_PLUGIN_DIR = "${inputs'.provider-bookorbit.packages.default}/bin";
          };
          test = pkgs.mkShell {
            nativeBuildInputs = sharedDeps;
          };
        };
    };
}
