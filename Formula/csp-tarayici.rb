class CspTarayici < Formula
  include Language::Python::Virtualenv

  desc "Cash-secured put scanner with a curses TUI, no API keys"
  homepage "https://github.com/kpostaagasi/csp-tarayici"
  url "https://github.com/kpostaagasi/csp-tarayici/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "a827962951c20b30b3b0e5f1334834ad811349ec7f9300176c0b5ab84799a027"
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
