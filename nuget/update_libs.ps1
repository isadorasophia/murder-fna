## script in powershell because that's what I'm most comfortable with~

## fetch latest artifacts at https://github.com/FNA-XNA/fnalibs-dailies/actions
$fnalibsPath = "$PSScriptRoot/../packages/fnalibs"

if (test-path $fnalibsPath) {
    Remove-Item $fnalibsPath -Recurse
}

Write-Output "📫 Installing latest binaries..."

$zipPathFnaLibs = "D:\downloads\fnalibs.zip"
$zipPathFnaAppleLibs = "D:\downloads\fnalibs-apple.zip"

Expand-Archive -Path $zipPathFnaLibs -DestinationPath $fnalibsPath -Force
Expand-Archive -Path $zipPathFnaAppleLibs -DestinationPath $fnalibsPath -Force

Write-Output "🪪 Renaming files..."

## now, let's rename the binaries so linux and mac are happy with us.
Rename-Item -Path "${fnalibsPath}/lib64/libFAudio.so.0" -NewName libFAudio.so
Rename-Item -Path "${fnalibsPath}/lib64/libFNA3D.so.0" -NewName libFNA3D.so
Rename-Item -Path "${fnalibsPath}/lib64/libSDL3.so.0" -NewName libSDL3.so

Rename-Item -Path "${fnalibsPath}/libaarch64/libFAudio.so.0" -NewName libFAudio.so
Rename-Item -Path "${fnalibsPath}/libaarch64/libFNA3D.so.0" -NewName libFNA3D.so
Rename-Item -Path "${fnalibsPath}/libaarch64/libSDL3.so.0" -NewName libSDL3.so

Rename-Item -Path "${fnalibsPath}/osx/libFAudio.0.dylib" -NewName libFAudio.dylib
Rename-Item -Path "${fnalibsPath}/osx/libFNA3D.0.dylib" -NewName libFNA3D.dylib
Rename-Item -Path "${fnalibsPath}/osx/libSDL3.0.dylib" -NewName libSDL3.dylib
