class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/michalchudziak/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/michalchudziak/homebrew-brew/master/AppleSimulatorUtils-0.5.24.tar.gz'
  sha256 'a83b79c4a7ff92ce5ea42f8710ca180fe0dd3078a532224555ac590c532ccb2b'
  head 'https://github.com/michalchudziak/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
