class DotnetRequirement < Requirement
    fatal true

    satisfy(:build_env => false) do 
      which("dotnet")
    end

    def message; <<~EOS
      dotnet is required; install it via one of:
        brew cask install dotnet
        brew cask install dotnet-sdk
      EOS
    end
  end

  