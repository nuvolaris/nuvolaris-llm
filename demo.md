#Test notes

## VLLM test

nuv llm gcp use
nuv llm vllm run

nuv llm gcp enter
nuv llm vllm query Q="Rome is" N=2


## TGI test

nuv llm gcp use
nuv llm tgi start

nuv llm gcp enter
nuv llm tgi query Q="what is deep learning" N=20

PS1="===============\n\$ "
clear ; echo -e "\n\ngeneric question\n\n"
task ask Q="what is a capital of italy" N=3

clear ; echo -e "\n\nspecific question without a document\n\n"
task ask Q="what is a recurrent model" N=100
clear ; echo -e "\n\nspecific question WITH a document\n\n"
task doc Q="what is a recurrent model" N=100

clear ; echo -e "\n\nspecific question without a document\n\n"
task ask Q="what is an attention mechanism?" N=200
clear ; echo -e "\n\nspecific question WITH a document\n\n"
task doc Q="what is an attention mechanism? " N=200


