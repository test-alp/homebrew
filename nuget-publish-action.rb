require_relative "dotnet_requirement"

class NugetPublishAction < Formula
  desc "dotnet tool homebrew poc"
  homepage "https://github.com/test-alp/nuget-publish-action"
  url "https://www.nuget.org/api/v2/package/NugetPublishAction/0.0.16"
  sha256 "b4b671036ad78e4fdffb7e39f4a259937b470c124db3274c66066dbc752431bd"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "NugetPublishAction", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
    # lib.install "dotnet_requirement.rb"
    # system "cp", "dotnet_requirement.rb", "#{Dir.pwd}"
  end
  
end
