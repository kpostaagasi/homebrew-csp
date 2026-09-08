class CspTarayici < Formula
  include Language::Python::Virtualenv

  desc "Cash-secured put scanner with a curses TUI, no API keys"
  homepage "https://github.com/kpostaagasi/csp-tarayici"
  url "https://github.com/kpostaagasi/csp-tarayici/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "15533c4367b4599d1b661eb62b8e17f1a7c539387089be5df3200c86b79cdee2"
  license "MIT"

  depends_on "python@3.13"

  # No resource blocks: the package has zero runtime dependencies.
  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csp --version")
    assert_match "sembol yok", shell_output("#{bin}/csp 2>&1", 1)
    assert_match "kayıtlı zincir yok", shell_output("#{bin}/csp --replay NOK 2>&1", 1)
  end
end
