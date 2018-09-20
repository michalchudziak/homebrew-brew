class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/michalchudziak/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/michalchudziak/homebrew-brew/master/AppleSimulatorUtils-0.5.25.tar.gz'
  sha256 '1c8aa99763e82cbe06ab8fb2b1b1b063e68ebe88a9404ec1ce26e53a6d08bd43'
  head 'https://github.com/michalchudziak/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
