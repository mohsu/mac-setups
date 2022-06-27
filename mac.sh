# Install Command Line Tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Homebrew-cask
brew install homebrew/cask

# Install Apps
brew install --cask iterm2 sublime-text google-chrome firefox docker notion slack zoom discord spotify messenger visual-studio-code telegram-desktop pdf-expert anaconda rectangle welly

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plugin for oh-my-zsh: powerlevel10k, autosuggestions, highlights
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Change scheme manually, add plugins
vi ~/.zshrc
# ZSH_THEME="powerlevel10k/powerlevel10k"
# plugins=(zsh-autosuggestions zsh-syntax-highlighting)

exec $SHELL

# Config powerlevel10k
# p10k configure
