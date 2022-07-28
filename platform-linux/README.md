# Install 

Create Linux x64 binaries for Golang and Dotnet Core code and install all Node packages into the /bin folder. The source folder "/src" is kept clean from binaries and library packages.

Dotnet packages are installed as self-contained.

## Docker Compilation

Use this docker compose script to create binaries and Node packages into the /bin folder without the need to install the development tools. The source folder "/src" is unefected.

This command below will compile and publish binaries to the /bin folder.

    docker-compose up


## Build script
Use *build.sh* to create binaries and Node packages into the /bin folder using pre-installed development tools. The source folder "/src" is unefected.

**Required tools:**
 - Dotnet SDK 6.0
 - Golang 1.14+
 - Node.js 14+

 call with argument linux-arm64 for ARM architecture