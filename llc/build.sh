git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
make LLAMA_CUBLAS=1
export PATH=~/.local/bin:$PATH
python3 -m pip install -r requirements.txt
