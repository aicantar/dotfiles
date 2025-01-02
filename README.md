# dotfiles

My dotfiles, zsh and Fedora Linux is assumed as it is my main workstation setup.
Non-Fedora-specific configs will work in any UNIX environment.

### Usage

Install zsh

```sh
sudo dnf install zsh
```

Change default shell to zsh

```sh
sudo chsh -s /bin/zsh <username>
```

Copy zshrc and zshrc.d as .zshrc and .zshrc.d to the home directory

```sh
cp zshrc ~/.zshrc
cp zshrc.d ~/.zshrc.d
```

Enable required configs by adding executable attribute to them

```sh
chmod +x ~/.zshrc.d/<config>
```

Reload the shell to apply changes.

