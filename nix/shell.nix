_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          yq
          opentofu
          openbao
          sops
        ];
      };
    };
}
