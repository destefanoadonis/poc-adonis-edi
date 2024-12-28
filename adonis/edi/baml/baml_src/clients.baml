client<llm> CustomAWS_Mistral_Large_2401_V1 {
  provider aws-bedrock
  options {
    model "mistral.mistral-large-2402-v1:0"
    region env.AWS_REGION
    access_key_id env.AWS_ACCESS_KEY_ID
    secret_access_key env.AWS_SECRET_ACCESS_KEY
  }
}
