#!binsh

# 1. Download the official dotnet install script
curl -sSL httpsdot.netv1dotnet-install.sh  dotnet-install.sh
chmod +x dotnet-install.sh

# 2. Install .NET (Adjust version if needed, e.g., --channel 8.0)
.dotnet-install.sh --channel 8.0 --install-dir .dotnet

# 3. Add .NET to the PATH so the shell can find the 'dotnet' command
export DOTNET_ROOT=$(pwd)dotnet
export PATH=$PATH$DOTNET_ROOT

# 4. Verify installation (optional, helps for logs)
dotnet --version

# 5. Run the actual build command
dotnet publish -c Release -o output