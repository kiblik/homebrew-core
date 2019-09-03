class Logtalk < Formula
  desc "Object-oriented logic programming language"
  homepage "https://logtalk.org/"
  url "https://github.com/LogtalkDotOrg/logtalk3/archive/lgt3290stable.tar.gz"
  version "3.29.0"
  sha256 "0db447b891b1081e100cacff5cc61af2e1ecc0a210fa875191462c42864d9597"

  bottle do
    cellar :any_skip_relocation
    sha256 "54a1887226037bf5fe7efb893a799f96b9f07fce70e7dc87df1cebc061e5d2c7" => :mojave
    sha256 "23ea43efcb579877c783e633306f2718ce3625c9ffc6cac94eb274974d5c1972" => :high_sierra
    sha256 "09e2622ab31d26220b40f8fd609c63accac59a4b598cd13af366bb9f4ae799db" => :sierra
  end

  depends_on "gnu-prolog"

  def install
    cd("scripts") { system "./install.sh", "-p", prefix }
  end
end
