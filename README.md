This is a fork of FNA as part of the Murder Engine. FNA is an XNA4 reimplementation that focuses solely on developing a fully accurate XNA4 runtime for the desktop.

See https://fna-xna.github.io/ for more details about FNA! 

🔨 Manual steps for updating nuget package (for now) [![NuGet version (24.4.2)](https://img.shields.io/nuget/v/Murder.FNA.svg?style=flat-square)](https://www.nuget.org/packages/Murder.FNA/)
-------
1. Run `nuget\update_libs.ps1`
2. Build arm64 binaries with [fnalibs-apple-builder](https://github.com/TheSpydog/fnalibs-apple-builder) and place them in `packages\osx-arm64`
3. Run `dotnet pack ./FNA.Core.csproj -c Release -p:ContinuousIntegrationBuild=true -p:PackFNALibs=true`
4. Manually upload at nuget!




💼 License
-------
FNA is released under the Microsoft Public License. See LICENSE for details.

FNA uses LzxDecoder.cs, released under a dual MSPL/LGPL license.
See lzxdecoder.LICENSE for details.

FNA uses code from the Mono.Xna project, released under the MIT license.
See monoxna.LICENSE for details.

📚 Documentation
-------------
Documentation for FNA and Murder Engine can be found at:

https://github.com/FNA-XNA/FNA/wiki<br>
https://isadorasophia.com/murder/

🐛 Found an issue?
---------------
Issues and patches are encouraged to be reported via the FNA GitHub:

https://github.com/FNA-XNA/FNA/issues
