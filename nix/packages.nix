{ self, ... }: {
  perSystem =
    {
      pkgs,
      inputs',
      self',
      ...
    }:
    {
      packages = {
        bindings = pkgs.stdenv.mkDerivation {
          name = "jsonnet bindings";
          src = self;
          nativeBuildInputs = with pkgs; [
            go-jsonnet
            gnumake
            opentofu

            inputs'.terraform-jsonnet-gen.packages.default
          ];
          buildPhase = ''
            make generate
          '';
          installPhase = ''
            mkdir -p $out
            cp -r vendor $out
          '';
          outputHashMode = "recursive";
          outputHashAlgo = "sha256";
          outputHash = "sha256-unWCZ0Ct5g5i8811VIb6M2uQxYDlOOYQ7rkhuTEjCtc=";
        };

      };
    };
}
