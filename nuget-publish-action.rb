require_relative "dotnet-requirement"

class NugetPublishAction < Formula
  desc "dotnet tool homebrew poc"
  homepage "https://github.com/test-alp/nuget-publish-action"
  url "https://nuget.org/api/v2/package/NugetPublishAction/0.0.27"
  sha256 "20a0c546e0ab9797c247343a3607f18e775cb7224db539e95fe067b5d4dd951d"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "NugetPublishAction", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
