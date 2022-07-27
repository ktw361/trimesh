set -xe

# download the binary from github releases and check hash
URL="https://github.com/KhronosGroup/glTF-Validator/releases/download/2.0.0-dev.3.8/gltf_validator-2.0.0-dev.3.8-linux64.tar.xz"
SHA="374c7807e28fe481b5075f3bb271f580ddfc0af3e930a0449be94ec2c1f6f49a"

rm /tmp/validator.tar.xz | true
wget $URL -O /tmp/validator.tar.xz
cd /tmp
# Check the hash of the downloaded file
echo "$SHA  validator.tar.xz" | sha256sum --check
# install binary
tar -xvf validator.tar.xz
chmod +x gltf_validator
mv gltf_validator /usr/local/bin
rm validator.tar.xz
