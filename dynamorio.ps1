pushd
((new-object system.net.webclient).downloadfile('https://github.com/DynamoRIO/dynamorio/releases/download/release_6_2_0/DynamoRIO-Windows-6.2.0-2.zip', 'C:\tools\dynamorio.zip'))
((new-object system.net.webclient).downloadfile('https://github.com/DynamoRIO/drmemory/releases/download/release_1.11.0/DrMemory-Windows-1.11.0-2.zip', 'C:\tools\drmemory.zip'))
cd C:\tools
unzip dynamorio.zip
rm dynamorio.zip
unzip drmemory.zip
rm drmemory.zip
popd
