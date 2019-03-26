CWD=$(pwd)
KUBECTL_VERSION="$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)"

echo "Latest version of kubectl is:  $KUBECTL_VERSION"

echo "Downloading kubectl"
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/darwin/amd64/kubectl"

echo "Making kubectl executable"
chmod 755 "$CWD/kubectl"

echo "Backing up previous version of kubectl"
mv "$CWD/bin/kubectl" "$CWD/bin/kubectl.bak"

echo "Moving latest kubectl into bin folder"
mv "$CWD/kubectl" "$CWD/bin"
