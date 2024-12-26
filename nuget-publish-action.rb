require_relative "dotnet-requirement"

class NugetPublishAction < Formula
  desc "dotnet tool homebrew poc"
  homepage "https://github.com/test-alp/nuget-publish-action"
  url "https://www.nuget.org/api/v2/package/NugetPublishAction/0.0.17"
  sha256 "e5eeb4dba89573a3e75ce5b02f6fbd8efd4cffaac32beeb3385f5e746e4a117c"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "NugetPublishAction", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
