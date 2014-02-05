
name "fpm"
maintainer "Jordan Sissel"
homepage "https://github.com/jordansissel/fpm"

replaces        "fpm"
install_path    "/opt/fpm"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

# fpm dependencies/components
dependency "fpm-gem"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
