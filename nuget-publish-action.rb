require_relative "dotnet-requirement"

class NugetPublishAction < Formula
  desc "dotnet tool homebrew poc"
  homepage "https://github.com/test-alp/nuget-publish-action"
  url "https://nuget.org/api/v2/package/NugetPublishAction/0.0.26"
  sha256 "62fef2947555725de47349537ceae79c3e076452fc63ad3eb9ba71df6d8a9cc1"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "NugetPublishAction", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
