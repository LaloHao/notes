{ pkgs ? import <nixpkgs> {} }:
let
  env = with pkgs.python3Packages; [ pyotp ];
in pkgs.mkShell {
  buildInputs = with pkgs; [
    env
    libcaca       # img2txt
    monkeysphere  # qrencode
    paperkey      # peperkey
  ];
}
