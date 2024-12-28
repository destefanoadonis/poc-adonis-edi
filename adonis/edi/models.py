
import pydantic_settings as pdt
from pydantic_ai.models.openai import OpenAIModel
from pydantic_ai.models.gemini import GeminiModel

class Models(pdt.BaseSettings):
    model: OpenAIModel = OpenAIModel('gpt-4o')
