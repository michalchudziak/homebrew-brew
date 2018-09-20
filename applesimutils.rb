class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/michalchudziak/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/michalchudziak/homebrew-brew/master/AppleSimulatorUtils-0.5.23.tar.gz'
  sha256 '2c995901a1883ebbb9028c41ebfc56d2cef8b77f117ca31862b4f3844dd8554b'
  head 'https://github.com/michalchudziak/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
