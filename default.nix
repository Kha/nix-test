{ pkgs ? import <nixpkgs> {}, llvmSuffix ? "", linkArgs ? "" }:
pkgs."llvmPackages${llvmSuffix}".stdenv.mkDerivation {
  name = "test";
  buildCommand = ''
    c++ ${./test.cpp} -o $out ${linkArgs} -v
  '';
}
