# NCCL_P2P_DISABLE="1" NCCL_IB_DISABLE="1" llamafactory-cli train examples/train_lora/llama3_lora_predict.yaml
# for multi gpu
NCCL_P2P_DISABLE="1" NCCL_IB_DISABLE="1" CUDA_VISIBLE_DEVICES=1,2,3 llamafactory-cli train examples/train_lora/llama3_lora_predict.yaml