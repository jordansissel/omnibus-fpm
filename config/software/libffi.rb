name "libffi"
version "3.0.13"
source :url => "ftp://sourceware.org/pub/libffi/libffi-3.0.13.tar.gz",
       :md5 => "45f3b6dbc9ee7c7dfbbbc5feba571529"

# creates required build directories
dependency "preparation"

relative_path "libffi-3.0.13"

build do
  cmd = [ "./configure", "--prefix=#{install_dir}/embedded" ]
  command cmd
  command "make -j #{max_build_jobs}", :env => {"LD_RUN_PATH" => "#{install_dir}/embedded/lib"}
  command "make install", :env => {"LD_RUN_PATH" => "#{install_dir}/embedded/lib"}
end
