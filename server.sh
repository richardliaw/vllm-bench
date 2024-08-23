# vllm serve meta-llama/Meta-Llama-3.1-8B-Instruct
vllm serve neuralmagic/Meta-Llama-3-8B-Instruct-FP8 \
    --served-model-name model \
    --enable-prefix-caching \
    --num-speculative-tokens 10 \
    --speculative-model="[ngram]" \
    --ngram-prompt-lookup-max=10 \
    --use-v2-block-manager
