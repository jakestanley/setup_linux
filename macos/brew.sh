# Install command line tools
xcode-select --install

# Install and configure Homebrew
ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
brew doctor
brew install caskroom/cask/brew-cask