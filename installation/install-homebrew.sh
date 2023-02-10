xcode-select --install

#Clean up existing homebrew
rm -rf /usr/local/bin/brew
rm -rf /usr/local/share/doc/homebrew
rm -rf /usr/local/share/man/man1/brew.1
rm -rf /usr/local/share/zsh/site-functions/_brew
rm -rf /usr/local/etc/bash_completion.d/brew
rm -rf /usr/local/Homebrew
rm -rf /opt/homebrew

curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
/bin/bash install.sh

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

rm install.sh
