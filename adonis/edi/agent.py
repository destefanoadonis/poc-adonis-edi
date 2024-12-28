# from adonis.edi.baml_client.sync_client import b
# from adonis.edi.baml_client.types import Resume

# def example(raw_resume: str) -> Resume: 
#   # BAML's internal parser guarantees ExtractResume
#   # to be always return a Resume type
#   response = b.ExtractResume(raw_resume)
#   return response

# def example_stream(raw_resume: str) -> Resume:
#   stream = b.stream.ExtractResume(raw_resume)
#   for msg in stream:
#     print(msg) # This will be a PartialResume type
  
#   # This will be a Resume type
#   final = stream.get_final_response()
#   return final


import pydantic_ai as pdt_ai 


pdt_ai.Agent(
  
)
