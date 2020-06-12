# zsh config
+ OS           : Kali Linux 2.2
+ Terminal     : Terminator
+ Font         : MesloLG NF Regular (Size: 13pt)

## A step by step guide to customize your zsh terminal:

### 1. Install Terminator
#### Debian/Ubuntu Users:

`sudo apt-get install terminator`

In case Terminator is not available in your default repository, just compile Terminator from [source code](https://launchpad.net/terminator/+download) 

Open your default terminal & cd into the extracted folder.

#### Install with:

`sudo ./setup.py install`
					
#### Fedora & Other Derivatives Users:

`dnf install terminator`

### 2. Install zsh

`sudo apt install zsh`

After install, set it as login shell in Terminator.

You can use:

`usermod --shell /bin/zsh user`

or

`chsh --shell /bin/zsh user`

or

Change User Shell in /etc/passwd

`vi /etc/passwd`

### 3. [Install oh-my-zsh](https://ohmyz.sh/) plugin

Run the following command in the terminal to install it:  
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### 4. [Install powerlevel10k](https://github.com/romkatv/powerlevel10k) theme for oh-my-zsh

Run the following command in the terminal:  
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k`

### 5. [Install a Nerd Font](https://github.com/ryanoasis/nerd-fonts)

Download [`Meslo LG L DZ Regular Nerd Font Complete.otf`](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/L-DZ/complete/Meslo%20LG%20L%20DZ%20Regular%20Nerd%20Font%20Complete.otf) and install it. Then go to *Open Terminator > Preferences > Profiles > Text* and open *Change Font* 
and select *Meslo LG L DZ Regular Nerd Font Complete* font.

### 6. Install two more plugins for zsh

+ `zsh` Syntax Highlighting Plugin:

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

+ `zsh` AutoSuggestion Plugin:  

`git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`

### 7. Replace `.zshrc` file 

Either dowload the given `.zshrc` file and replace your `.zshrc` file with this or copy the entire text from the given file to your `.zshrc` file.
