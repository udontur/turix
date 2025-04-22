nix-init -> use package release url

Change "rev" to "tag"

installPhase = ''
    runHook preInstall
    install -Dm755 ./NAME $out/bin/NAME
    runHook postInstall
'';

maintainers = with lib.maintainers; [ udontur ];

Format the code

git checkout -b NAME

git push origin NAME

git commit:
NAME: init at 1.0.0
NAME: 1.0.0 -> 1.0.1