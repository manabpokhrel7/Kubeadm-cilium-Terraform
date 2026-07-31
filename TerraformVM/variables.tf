variable "ssh_public_key" {
  type = string
}

variable "openai_api_key" {
  type        = string
  description = "OpenAI secret"
  sensitive   = true
}
variable "GOOGLE_CLIENT_ID" {
  type        = string
  description = "Google client id"
  sensitive   = true
}
variable "GOOGLE_CLIENT_SECRET" {
  type        = string
  description = "Google auth client secret"
  sensitive   = true
}
variable "TOKEN_URI" {
  type        = string
  description = "Token URI secret"
  sensitive   = true
}
variable "SECRET_KEY" {
  type        = string
  description = "Random key secret"
  sensitive   = true
}

variable "zone" {
  type = string
  description = "The zone of the resource"
}
variable "region" {
  type = string
  description = "The region of the resource"
}