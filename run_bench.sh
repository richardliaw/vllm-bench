python benchmarks/benchmark_serving.py \
    --backend vllm \
    --model neuralmagic/Meta-Llama-3-8B-Instruct-FP8 \
    --dataset-name conversations \
    --dataset-path ... \
    --request-rate 2 \ 
    --num-prompts 100