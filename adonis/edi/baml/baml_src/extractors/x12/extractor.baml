class X12Input {
    release (5010) @description(#"
        The X12 release version, formatted as a six-digit string (e.g., '004010', '005010'). 
        This indicates the specific version of the X12 standard being used, which is essential for 
        correctly interpreting and parsing the transaction data according to the appropriate specifications.
    "#)
    transaction_set_id (835) @description(#"
        The three-digit X12 transaction set identifier (e.g., '835' for Health Care Claim Payment/Advice, 
        '837' for Health Care Claim). This code specifies the type of transaction being processed.
    "#)
    data string @description(#"
        The complete X12 transaction data in its raw, delimited format. 
        Use this data to extract the necessary information according to the specified schema.        
    "#)

}


class X12Output {
    release int @description(#"
        The X12 release version, formatted as a six-digit string (e.g., '004010', '005010'). 
        This indicates the specific version of the X12 standard being used, which is essential for 
        correctly interpreting and parsing the transaction data according to the appropriate specifications.
    "#)
    transaction_set_id int @description(#"
        The three-digit X12 transaction set identifier (e.g., '835' for Health Care Claim Payment/Advice, 
        '837' for Health Care Claim). This code specifies the type of transaction being processed.
    "#)
    data (X12_835_5010) @description(#"
        A list containing the complete X12 transaction data structured according to the X12 schema. 
        Each item in the list represents a parsed segment of the transaction, enabling structured access to 
        payment and remittance information as defined by the X12 835 5010 specifications.
    "#)
}


function X12Extractor(params: X12Input) -> (X12Output) {
  client CustomAWS_Mistral_Large_2401_V1
  prompt #"
     You are an expert in X12 Electronic Data Interchange, specializing in healthcare transactions such as 835 (Healthcare Claim Payment/Advice) and 837 (Healthcare Claim). 
     Your task is to parse the provided raw X12 transaction data and extract the relevant information into a structured format according to the provided JSON schema.

     * The raw X12 data includes segments, elements, and delimiters: segment terminators (~), element separators (*), and component element separators (:).
     * The transaction type (e.g., 835, 837) is provided in the input.
     * If the X12 data is invalid, malformed, or you cannot extract the required information according to the schema, return `null`.

     
     Rules:
     * Any empty strings with length should be replaced by `null`
     * All strings must be trimmed. For example `  hello  ` should be `hello`

     Use the provided output format to guide your extraction.

     X12 Release: {{ params.release }}
     Transaction Set ID: {{ params.transaction_set_id }}

     Extract this X12 transaction:
     ---
     {{ params.data }}
     ---

     {{ ctx.output_format }}
  "#
}
