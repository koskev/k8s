_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          jsonnet
          yq
          opentofu
          tofu-ls
          openbao
          sops
        ];
      };
    };
}
