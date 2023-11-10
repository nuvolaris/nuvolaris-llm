#!/bin/bash
export "$(cat /etc/environment)"
source "/usr/local/cargo/env"
cd /usr/local/src
# setup a virtualenv
virtualenv virtualenv
source virtualenv/local/bin/activate
git clone https://github.com/huggingface/text-generation-inference.git
cd text-generation-inference
git checkout v1.1.0 -b v1.1.0
make install
