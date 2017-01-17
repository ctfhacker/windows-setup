pushd
((new-object system.net.webclient).downloadfile('https://github.com/DynamoRIO/dynamorio/releases/download/release_6_2_0/DynamoRIO-Windows-6.2.0-2.zip', 'C:\tools\dynamorio.zip'))
cd C:\tools
[System.IO.Compression.ZipFile]::ExtractToDirectory('dynamorio.zip', 'dynamorio')
popd
