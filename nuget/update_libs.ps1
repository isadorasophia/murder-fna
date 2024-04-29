## script in powershell because that's what I'm most comfortable with~

$fnalibsPath = "$PSScriptRoot/../packages/fnalibs"

Remove-Item $fnalibsPath -Recurse

Write-Output "📫 Installing latest binaries..."

wget https://fna.flibitijibibo.com/archive/fnalibs.tar.bz2 -P $fnalibsPath

$zipFnalibs = "$fnalibsPath/fnalibs.tar.bz2"

tar -xvzf $zipFnalibs -C $fnalibsPath
rm $zipFnalibs

Write-Output "🪪 Renaming files..."

## now, let's rename the binaries so linux and mac are happy with us.
Rename-Item -Path "${fnalibsPath}/lib64/libFAudio.so.0" -NewName libFAudio.so
Rename-Item -Path "${fnalibsPath}/lib64/libFNA3D.so.0" -NewName libFNA3D.so
Rename-Item -Path "${fnalibsPath}/lib64/libSDL2-2.0.so.0" -NewName libSDL2.so

Rename-Item -Path "${fnalibsPath}/libaarch64/libFAudio.so.0" -NewName libFAudio.so
Rename-Item -Path "${fnalibsPath}/libaarch64/libFNA3D.so.0" -NewName libFNA3D.so
Rename-Item -Path "${fnalibsPath}/libaarch64/libSDL2-2.0.so.0" -NewName libSDL2.so

Rename-Item -Path "${fnalibsPath}/osx" -NewName osx-x64

Rename-Item -Path "${fnalibsPath}/osx-x64/libFAudio.0.dylib" -NewName libFAudio.dylib
Rename-Item -Path "${fnalibsPath}/osx-x64/libFNA3D.0.dylib" -NewName libFNA3D.dylib
Rename-Item -Path "${fnalibsPath}/osx-x64/libSDL2-2.0.0.dylib" -NewName libSDL2.dylib
Rename-Item -Path "${fnalibsPath}/osx-x64/libvulkan.1.dylib" -NewName libvulkan.dylib
