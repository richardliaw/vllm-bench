from openai import OpenAI
import os
import json

# Modify OpenAI's API key and API base to use vLLM's API server.
openai_api_key = "EMPTY"
openai_api_base = "http://localhost:8000/v1"
client = OpenAI(
    api_key=openai_api_key,
    base_url=openai_api_base,
)
prompt_list = []

with open(os.path.expanduser("~/online_compiled_orders.jsonl")) as f:
    for content in f:
        prompt_list.append(json.loads(content)[0]["content"])

for i, prompt in enumerate(prompt_list):
    chat_response = client.chat.completions.create(
        model="model",
        messages=[
            {"role": "system", "content": "You are a efficient and concise cooking planner."},
            {"role": "user", "content": prompt}
        ]
    )
    
    print("Prompt", prompt)
    print("xxxxxxxxxxx" * 10)
    print("Completion result:")
    print(chat_response.choices[0].message.content)
    print("xxxxxxxxxxx" * 10)
    print(chat_response.usage)
    if i > 10: break
