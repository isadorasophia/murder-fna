This is fnalibs-apple, an archive containing the native libraries used by FNA
to target Apple platforms.

These are the folders included:

- osx: macOS Universal dynamic libraries, requires version 10.11 or newer
- iphoneos: iOS static libraries, requires version 13 or newer
- appletvos: tvOS static libraries, requires version 13 or newer

Libraries for the simulators are not provided.

The library dependency list is as follows:

- SDL3, used as the platform layer
- FNA3D, used in the Graphics namespace
    - For static libraries, mojoshader.a is used by libFNA3D.a
- FAudio, used in the Audio/Media namespaces
- libtheorafile, only used for VideoPlayer
