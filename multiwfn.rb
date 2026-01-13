class Multiwfn < Formula
  desc "Multifunctional Wavefunction Analyzer"
  desc "A copy of settings.ini is installed."
  desc "To use it, set environment variable Multiwfnpath=${HOMEBREW_PREFIX}/etc/multiwfn."
  homepage "http://sobereva.com/multiwfn/"
  head "https://github.com/digital-chemistry-laboratory/multiwfn-mac-build.git", branch: "source_dist"
  license :cannot_represent

  option "with-openmp", "Builds with OpenMP support."

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "gcc"
  depends_on "flint"
  depends_on "openblas"
  fails_with :clang

  def install
    cmake_args = std_cmake_args
    cmake_args << "-DWITH_OpenMP=ON" if build.with? "openmp"
    system "cmake", "-S", ".", "-B", "build", *cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "expect", "-c", "'spawn multiwfn; send \\003;'"
  end
end
