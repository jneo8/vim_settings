# Here is my vim settings.

- Step 1

`macos`

```
brew remove vim ;brew cleanup; brew install vim --with-python3 --without-python --with-ruby --with-override-system-vi
```

`Ubuntu`

```
sudo apt-get cleanup; sudo apt-get install vim; sudo apt-get install vim-nox;
```

- Step 2, install vim-plug

See: https://github.com/junegunn/vim-plug

- For `fzf`, Install `Ag`

See: https://github.com/ggreer/the_silver_searcher

- Step 3, Get vimrc && Run PlugInstall

```
wget -q https://raw.githubusercontent.com/jneo8/vim_settings/master/vimrc -O ~/.vimrc; vim +'PlugInstall --sync' +qa;
```

## Options

- NERD-Fronts

https://github.com/ryanoasis/nerd-fonts#option-3-install-script
