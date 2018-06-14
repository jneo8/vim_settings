# Here is my vim settings.


## Step 1.

`mac OS`

```bash
brew install python3 && brew remove vim ;brew cleanup; brew install vim --with-python3 --without-python --with-ruby --with-override-system-vi
```

`ubuntu`

```bash
sudo apt-get install python3;sudo apt-get cleanup; sudo apt-get install vim; sudo apt-get install vim-nox;
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

download vimrc

```
git clone https://github.com/jneo8/vim_settings.git; cp vim_settings/vimrc ~/.vimrc;
```

## Step 5

in vim

```
:PlugInstall
```
