python benchmark_serving.py \
    --backend vllm \
    --model meta-llama/Meta-Llama-3.1-8B-Instruct \
    --dataset-name conversations \
    --dataset-path ~/online_compiled_orders.jsonl \
    --sharegpt-output-len 200 \
    --request-rate 1 --num-prompts 30
