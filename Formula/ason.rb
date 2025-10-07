class Ason < Formula
  desc "A powerful project scaffolding tool that transforms templates into fully-formed projects"
  homepage "https://github.com/madstone-tech/ason"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/madstone-tech/ason/releases/download/v#{version}/ason_Darwin_arm64.tar.gz"
      sha256 "" # Will be updated by GoReleaser
    else
      url "https://github.com/madstone-tech/ason/releases/download/v#{version}/ason_Darwin_x86_64.tar.gz"
      sha256 "" # Will be updated by GoReleaser
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/madstone-tech/ason/releases/download/v#{version}/ason_Linux_arm64.tar.gz"
      sha256 "" # Will be updated by GoReleaser
    else
      url "https://github.com/madstone-tech/ason/releases/download/v#{version}/ason_Linux_x86_64.tar.gz"
      sha256 "" # Will be updated by GoReleaser
    end
  end

  def install
    bin.install "ason"

    # Install shell completions
    bash_completion.install "completions/ason.bash" => "ason" if File.exist?("completions/ason.bash")
    zsh_completion.install "completions/_ason" if File.exist?("completions/_ason")
    fish_completion.install "completions/ason.fish" if File.exist?("completions/ason.fish")
  end

  test do
    system "#{bin}/ason", "--version"
  end
end
