_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          go-jsonnet
          jq
          yq
          opentofu
          tofu-ls
          openbao
          sops
          authelia
          gnumake
        ];
      };
    };
}
