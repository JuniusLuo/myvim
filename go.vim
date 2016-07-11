#!/bin/bash

go get -u golang.org/x/tools/cmd/goimports
go get -u github.com/nsf/gocode
go get -u github.com/rogpeppe/godef
go get -u github.com/golang/lint/golint
go get -u github.com/kisielk/errcheck
go get -u golang.org/x/tools/cmd/oracle

# install YouCompleteMe (requires building)
# git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe/
# for mac, brew install cmake
# pushd ~/.vim/bundle/YouCompleteMe
# git submodule update --init --recursive
# ./install.sh
# popd
