
class X12_835_5010_X221A1_Validator_Schema_Errors {
    segment string
    element string
    issue string
    description string
}

class X12_835_5010_X221A1_Validator_Schema {
    status ("failed" | "passed")
    message string?
    errors X12_835_5010_X221A1_Validator_Schema_Errors[]
}

class X12_835_5010_X221A1_Validator_Input_V0 {
    body string
}

class X12_835_5010_X221A1_Validator_Output_V0 {
    data X12_835_5010_X221A1_Validator_Schema @description(#"
        Example Input:
        ---
        ---
    "#)
}


function X12_835_5010_X221A1_Validator(params: X12_835_5010_X221A1_Validator_Input_V0) -> X12_835_5010_X221A1_Validator_Output_V0 {
  client CustomAWS_Mistral_Large_2401_V1
  prompt #"
    You are an expert in X12 Electronic Data Interchange (EDI) validation, specializing in the 835 X221A1 - Health Care Claim Payment/Advice transaction set. Your task is to validate the formatting and structure of raw X12 transaction data according to the HIPAA X12 Release 5010 standard.

    Responsibilities:
    1. Validation Scope:
    - Confirm compliance with the X12 HIPAA 5010 specifications for 835 X221A1.
    - Identify and report any formatting errors, inconsistencies, or deviations from the standard.

    2. Validation Checklist:
    - Transaction Envelope Validation:
        - Verify that the ISA (Interchange Control Header) and IEA (Interchange Control Trailer) segments are present, properly formatted, and paired.
        - Validate the GS (Functional Group Header) and GE (Functional Group Trailer) segments.
        - Check that control numbers match between the header and trailer segments (e.g., ISA13 and IEA02, GS06 and GE02).
    - Segment Validation:
        - Ensure each segment is terminated with the designated segment terminator (~).
        - Verify that the correct number of data elements is present in each segment and that optional elements adhere to constraints.
    - Element Validation:
        - Confirm that mandatory data elements are present and formatted correctly (e.g., numeric elements are valid numbers, dates are in CCYYMMDD format).
        - Check for invalid, extra, or missing delimiters: element separator (*) and component separator (:).
    - Loop Structure Validation:
        - Validate that hierarchical loops (e.g., 1000A, 2000, 2100) are structured correctly and adhere to the specified repeat counts.
        - Ensure nested relationships between parent and child loops are maintained.
    - Transaction-Specific Validation:
        - Verify compliance with specific requirements for 835 X221A1, such as:
        - Claim Payment Information (CLP).
        - Adjustments (CAS).
        - Service Payment Information (SVC).
        - Monetary and Quantity values (AMT, QTY).

    3. Validation Rules:
    - For invalid or malformed transactions, return a detailed report of errors, including:
        - Segment name.
        - Element/loop in error.
        - Description of the issue (e.g., "Missing mandatory element CLP01," "Invalid date format in DTM02").
    - Highlight discrepancies in the control totals or other cross-referenced fields (e.g., ISA segment control number inconsistencies).
    - If the transaction is valid, return a confirmation message stating: "Validation Successful: The transaction conforms to the X12 HIPAA 5010 standard."

    4. Error Reporting Format:
    - Use a structured JSON format to report validation results:
    {
        "status": "failed",
        "errors": [
        {
            "segment": "CLP",
            "element": "CLP01",
            "issue": "Missing mandatory data element",
            "description": "CLP01 is required for Claim Payment Information."
        },
        {
            "segment": "DTM",
            "element": "DTM02",
            "issue": "Invalid date format",
            "description": "DTM02 must be in CCYYMMDD format."
        }
        ],
        "summary": {
        "total_errors": 2,
        "transaction_status": "Rejected"
        }
    }

    5. Validation Context:
    - Focus exclusively on the 835 X221A1 transaction.
    - Assume all necessary delimiters (~, *, :) and control structures are predefined but validate their correctness.

    Examples:
    - Valid Transaction: Return:
    {
        "status": "passed",
        "message": "Validation Successful: The transaction conforms to the X12 HIPAA 5010 standard."
    }

    - Invalid Transaction: Return a detailed error report as described above.

    Your expertise ensures precise validation of the 835 X221A1 transaction, identifying errors and providing actionable feedback for correction.

    Validate this X12 transaction:
     ---
     {{ params.body }}
     ---

     {{ ctx.output_format }}     
  "#
}
