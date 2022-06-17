class Multiwfn < Formula
  desc "A Multifunctional Wavefunction Analyzer"
  homepage "http://sobereva.com/multiwfn/"
  head "https://github.com/kjelljorner/multiwfn-mac-build.git", branch: "source_dist"
  license :cannot_represent

  desc "A copy of settings.ini is installed, to use it, set environment variable Multiwfnpath=${HOMEBREW_PREFIX}/etc/multiwfn to use it."

  option "with-openmp", "Builds with OpenMP support."

  depends_on "cmake" => :build
  depends_on "gcc"
  depends_on "openblas"

  def install
    cmake_args = std_cmake_args
    if build.with? "openmp"
      cmake_args << "-DWITH_OpenMP=ON"
    end
    system "cmake", "-S", ".", "-B", "build", *cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "expect", "-c", "'spawn multiwfn; send \\003;'"
  end
end
