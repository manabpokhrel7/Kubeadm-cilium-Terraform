variable "ssh_public_key" {
  type = string
}

variable "openai_api_key" {
  type        = string
  description = "OpenAI secret"
  sensitive   = true
}