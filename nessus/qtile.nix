{config, pkgs, lib, fetchFromGitHub}: 
let
  qtile-extras = pkgs.python3.pkgs.buildPythonPackage {
    pname = "qtile-extras";
    version = "unstable-2022-05-26";
    src = fetchFromGitHub {
      owner = "elParaguayo";
      repo = "qtile-extras";
      rev = "52c143da6917ac0f1e0b1aacc1af48e2bebc7289";
      sha256 = "0rnc1mqmqccydk5bsgfzzj5q9s6syk6abc6n83wr62gd843ff6p7";
    };
    doCheck = false;
  };

  in
    (pkgs.qtile.overrideAttrs(oldAttrs: {
        propagatedBuildInputs = [
	  qtile-extras
	];}))
