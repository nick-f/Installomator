githubcopilot)
    name="GitHub Copilot"
    type="dmg"
    if [[ $(arch) = "i386" ]]; then
        archiveName="${name// /-}-darwin-x64.${type}"
        downloadURL=$(downloadURLFromGit github app | grep -i x64)
    else
        archiveName="${name// /-}-darwin-arm64.${type}"
        downloadURL=$(downloadURLFromGit github app | grep -i arm64)
    fi
    appNewVersion=$(versionFromGit github app)
    expectedTeamID="VEKTX9H2N7"
    ;;
