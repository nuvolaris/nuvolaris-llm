alias nlu="nuv llm util"
alias nlt="nuv llm tgi"

nlu gpu

model=tiiuae/falcon-7b-instruct
volume=$PWD/data # share a volume with the Docker container to avoid downloading weights every run
sudo docker run --gpus all --shm-size 1g -p 8080:80 -v $volume:/data ghcr.io/huggingface/text-generation-inference:latest --model-id $model

pip install httpie
http POST 34.41.218.56:8080/generate inputs='What is Deep Learning?' parameters:='{"max_new_tokens":200}'
