name "fpm-gem"
version "1.0.2"

dependency "gdbm" # because the omnibus-software/ruby doesn't list it.
dependency "ruby"
dependency "rubygems"
dependency "libffi"

build do
  gem "install fpm -n #{install_dir}/embedded/bin --no-rdoc -no-ri -v #{version}"
end
