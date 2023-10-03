{ pkgs ? import <nixpkgs> { } }:

with pkgs ;
let
  frameworks = darwin.apple_sdk.frameworks;
in
mkShell {
  packages = [
    llvmPackages_16.clang
    cmake
    frameworks.IOKit
    curl
    iconv
  ];
}
