# Here is my vim settings.


## Step 1.

```bash
brew install python3 && brew remove vim ;brew cleanup; brew install vim --with-python3 --without-python --with-ruby --with-override-system-vi
```

## Step 2.

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Step 3.

```bash
mkdir -p  ~/.vim/dirs && cd  ~/.vim/dirs && mkdir undos backups tmp
```

## Step 4

Download vimrc

## Step 5

in vim

```
:PlugInstall
```
