class CspTarayici < Formula
  include Language::Python::Shebang

  desc "Cash-secured put scanner with a curses TUI, no API keys"
  homepage "https://github.com/kpostaagasi/csp-tarayici"
  url "https://github.com/kpostaagasi/csp-tarayici/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "560cbb115aec34e1fa0844d5eef19e718b43632d26bfffef19ff02dfdc636ace"
  license "MIT"

  depends_on "python@3.13"

  def install
    rewrite_shebang detected_python_shebang, "csp.py"
    bin.install "csp.py" => "csp"
    doc.install "README.md"
  end

  test do
    assert_match "selftest ok", shell_output("#{bin}/csp --selftest")
    assert_match version.to_s, shell_output("#{bin}/csp --version")
    assert_match "sembol yok", shell_output("#{bin}/csp 2>&1", 1)
  end
end
