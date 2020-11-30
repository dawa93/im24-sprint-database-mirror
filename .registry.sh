LINE_TO_ADD="//npm.pkg.github.com/:_authToken=fc088153db712c52fc8f750c05801e2b1a7640e7"

check_if_line_exists()
{
    # grep wont care if one or both files dont exist.
    grep -qsFx "$LINE_TO_ADD" ~/.npmrc
}

add_line_to_profile()
{
    profile=~/.npmrc
    printf "\n%s\n%s\n" "$LINE_TO_ADD" "@codestates-cc:registry=https://npm.pkg.github.com" >> "$profile"
}

check_if_line_exists || add_line_to_profile