{ pkgs }: {
  deps = [
    pkgs.nodejs
    pkgs.python3
    pkgs.git
    pkgs.curl
    pkgs.bashInteractive
  ];
}