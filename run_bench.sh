python benchmarks/benchmark_serving.py \
    --backend vllm \
    --model neuralmagic/Meta-Llama-3-8B-Instruct-FP8 \
    --dataset-name conversations \
    --dataset-path ... \
    --sharegpt-output-len 200 \
    --request-rate 2 \
    --num-prompts 100