def estimate_llm_cost(
    model_name: str,
    input_tokens: int,
    output_tokens: int
) -> float:
    """
    Estimates the cost of a language model request given the number of input (prompt) 
    and output (completion) tokens, based on a specified model's pricing.

    :param model_name: The name of the model (e.g., 'gpt-3.5-turbo', 'gpt-4')
    :param input_tokens: Number of tokens in the input/prompt
    :param output_tokens: Number of tokens in the output/completion
    :return: The estimated cost in USD
    """

    # Example cost per 1,000 tokens in USD (replace with actual rates as needed).
    pricing = {
        "mistral.mistral-large-2402-v1:0": {"prompt": 0.004,   "completion": 0.012},
    }

    if model_name not in pricing:
        raise ValueError(f"Unknown model_name '{model_name}'. "
                         f"Supported models: {list(pricing.keys())}.")

    model_pricing = pricing[model_name]

    # Convert tokens into "thousands of tokens" and multiply by the cost
    cost_prompt = (input_tokens / 1000) * model_pricing["prompt"]
    cost_completion = (output_tokens / 1000) * model_pricing["completion"]

    total_cost = cost_prompt + cost_completion
    return total_cost


# Example usage:
if __name__ == "__main__":
    model = "gpt-3.5-turbo"
    prompt_tokens = 1200   # e.g. prompt containing 1200 tokens
    completion_tokens = 800  # e.g. LLM responds with 800 tokens

    cost = estimate_llm_cost(model, prompt_tokens, completion_tokens)
    print(f"Estimated cost for {model}: ${cost:.6f}")
