{ lib, stdenvNoCC, }:
stdenvNoCC.mkDerivation rec {
  pname = "solidity.ctags";
  version = "0.0.1";

  phases = [ "installPhase" ];

  installPhase = ''
    runHook preInstall

    install -Dm644 ${./solidity.ctags} "$out/share/ctags.d/optlib/solidity.ctags"

    runHook postInstall
  '';

  meta = with lib; {
    description = "Universal Ctags optlib parser for Solidity";
    homepage = "https://github.com/whonore/solidity.ctags";
    platforms = platforms.unix;
  };
}
