require_relative "dotnet-requirement"

class NugetPublishAction < Formula
  desc "dotnet tool homebrew poc"
  homepage "https://github.com/test-alp/nuget-publish-action"
  url "https://nuget.org/api/v2/package/NugetPublishAction/0.0.16"
  sha256 "0f804afcba82bbddc77e6acfbcd371045fd4c0adba0c2dee1d9f076e841d43b5"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "NugetPublishAction", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
