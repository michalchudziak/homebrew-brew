class Applesimutils < Formula
  desc 'Apple simulator utilities'
  homepage 'https://github.com/michalchudziak/AppleSimulatorUtils'
  url 'https://raw.githubusercontent.com/michalchudziak/homebrew-brew/master/AppleSimulatorUtils-0.5.26.tar.gz'
  sha256 '01c2491266124dd136063b87d334cc0493442d58d6de9056b6cca465c7119afe'
  head 'https://github.com/michalchudziak/AppleSimulatorUtils.git'

  depends_on xcode: ['10.0', :build]

  def install
    system './buildForBrew.sh', prefix
  end

  test do
    system "#{bin}/applesimutils", '--help'
  end
end
