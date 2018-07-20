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

- Step 3, Get vimrc

```
git clone https://github.com/jneo8/vim_settings.git /tmp ; cp /tmp/vim_settings/vimrc ~/.vimrc;
```

- Step 4, install plugin

```
:PlugInstall
```

