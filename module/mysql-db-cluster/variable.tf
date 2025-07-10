variable "name" {
  description = "Name prefix for DB resources"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where DB resides"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for DB subnet group"
  type        = list(string)
}

variable "allowed_cidrs" {
  description = "List of CIDRs allowed to connect to DB"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "engine_version" {
  description = "MySQL engine version"
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "Instance class for the RDS DB"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Storage size in GB"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "username" {
  description = "Master DB username"
  type        = string
}

variable "password" {
  description = "Master DB password"
  type        = string
  sensitive   = true
}

variable "multi_az" {
  description = "Enable Multi-AZ deployment"
  type        = bool
  default     = false
}

variable "publicly_accessible" {
  description = "Should the DB be publicly accessible"
  type        = bool
  default     = false
}
