# bookIPS-Solvook-LLM
* [TIPS]교육콘텐츠IP 라이선싱 플랫폼 고도화를 위한 컴포넌트 단위 콘텐츠 관계성 분석 AI기술개발
* [TIPS] AI Technology Development for Component-Level Content Relationship Analysis to Enhance Educational Content IP Licensing Platform
----
Developing a LLM based on LLaMA 3.1 for tasks related to korean - english educational contents using LLaMA factory


## Because of using different package, you have to seperate environment for fine tuning (inference) and benchmark dataset evaluation

## !!! Please check whether your dataset and model path are right place !!!
our dataset and model file link (not for public): https://drive.google.com/drive/folders/1MKuKHomY80jABU5Dykpg86Fe9-tuTD4t?usp=sharing
# 1. For LLaMA Factory - LLM fine tuning

```bash
git clone --recurse-submodules https://github.com/MLAI-Yonsei/bookIPs-Solvook-LLM.git
cd bookIPs-Solvook-LLM
conda create -n <name> python==3.11
conda activate <name>
pip install -r requirements.txt
huggingface-cli login
```

## Data Preparation
Place the provided data in the /data folder. The data information has been entered in [data/dataset_info.json](data/dataset_info.json), so please place the data files as they are without modifying them.

## Model Preparation
Similarly, place the provided adapter model files in a specific folder. The location of the adapter model files doesn’t matter, but when performing inference, apply the adapter model file path to adapter_name_or_path. By default, it is set to **saves/llama3.1_edu**

## Quick Start
### Train
if you want to edit argument for training, edit file **examples/train_lora/llama3_lora_sft.yaml**

```bash
bash finetune.sh
```

### Inference
if you want to edit argument for training, edit file **examples/train_lora/llama3_lora_predict.yaml**

```bash
bash inference.sh
```

> [!TIP]
> Attach `CUDA_VISIBLE_DEVICES=1,2,3` in front of code above to utilize multi GPU

> [!TIP]
> for more information to extend usage of LLaMA Factory package, visit https://github.com/hiyouga/LLaMA-Factory

# 2. For LLM evaluation - lm-eval-harness

```bash
conda deactivate
conda create -n <name> python==3.10
conda activate <name>
cd lm-evaluation-harness
pip install -e .
```

## Quick Start
if you want to edit argument for evaluation, edit file **llama3.1_edu_evaluation.sh**
```bash
bash llama3.1_edu_evaluation.sh
```