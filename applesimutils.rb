class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/michalchudziak/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/michalchudziak/homebrew-brew/master/AppleSimulatorUtils-0.5.25.tar.gz'
  sha256 '38b71d55eaaca6016c6beffe1e058ed10e8af6da5fffce064e4edb3eaa369f51'
  head 'https://github.com/michalchudziak/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
