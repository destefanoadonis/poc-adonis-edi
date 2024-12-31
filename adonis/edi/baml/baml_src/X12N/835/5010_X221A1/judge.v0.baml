class X12_835_5010_X221A1_Judge_Schema_Error {
    extractor_id string
    segment string
    element string
    issue string
    description string
}

class X12_835_5010_X221A1_Judge_Schema_Summary {
    total_extractions int
    total_errors int
    extraction_status ("valid" | "invalid")
}

class X12_835_5010_X221A1_Judge_Schema {
    status ("failed" | "passed")
    message string?
    errors X12_835_5010_X221A1_Judge_Schema_Error[]
    summary X12_835_5010_X221A1_Judge_Schema_Summary
}

class X12_835_5010_X221A1_Judge_Input_V0 {
    extraction X12_835_5010_X221A1_Extractor_Output_V0
}

class X12_835_5010_X221A1_Judge_Output_V0 {
    data X12_835_5010_X221A1_Judge_Schema @description(#"
        Example Input:
        ---
        {
          "status": "passed",
          "message": "Extraction is valid.",
          "errors": [],
          "summary": {
            "total_extractions": 1,
            "total_errors": 0,
            "extraction_status": "valid"
          }
        }
        ---
    "#)
}

function X12_835_5010_X221A1_Judge(params: X12_835_5010_X221A1_Judge_Input_V0) -> X12_835_5010_X221A1_Judge_Output_V0 {
  client CustomAWS_Mistral_Large_2401_V1
  prompt #"
    You are an expert in X12 Electronic Data Interchange (EDI) validation and auditing, specializing in the 835 X221A1 - Health Care Claim Payment/Advice transaction set. 
    Your role is to validate the output of a single X12 extractor, ensuring the extracted data conforms to the HIPAA X12 Release 5010 standard.

    Responsibilities:
    1. Extraction Validation:
    - Analyze the provided extraction and ensure it complies with the X12 HIPAA 5010 specifications for the 835 X221A1 transaction set.

    2. Validation Rules:
    - Check that all mandatory fields are present and formatted correctly.
    - Ensure correct relationships between loops, segments, and elements.
    - Verify no missing, mismatched, or extra data fields.
    - Validate the presence and correctness of specific transaction elements such as Claim Payment Information (CLP), Adjustments (CAS), Service Payment Information (SVC), and others.

    3. Error Reporting:
    - If the extraction fails validation, return a structured error report:
    {
        "extractor_id": "Extractor1",
        "segment": "CLP",
        "element": "CLP01",
        "issue": "Missing mandatory data element",
        "description": "CLP01 is required for Claim Payment Information."
    }

    4. Summary:
    - Provide a summary of the validation process:
        - Total number of extractions (always 1 in this case).
        - Total errors encountered.
        - Extraction status: "valid" if no errors, "invalid" otherwise.

    Validate this extraction:
    ---
    {{ params.extraction.data }}
    ---

    Return the final judgment in this format:
    {{ ctx.output_format }}
  "#
}
