#!/bin/bash
sudo chown -R "$(id -u)" /usr/local/rustup /usr/local/cargo
cd ~
source "/usr/local/cargo/env"
if test ! -d venv
then virtualenv venv
fi
source venv/bin/activate
if test ! -d text-generation-inference
then git clone https://github.com/huggingface/text-generation-inference.git
fi
cd text-generation-inference
git checkout v1.1.0 -b v1.1.0
make install
