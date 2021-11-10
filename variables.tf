variable "job_name" {
  description = "This is the name you want to give to your Synthetic Monitor"
  type        = string
}

variable "target_url" {
  description = "This is the http url for the website endpoint you want to monitor"
  type        = string
}

variable "project_label" {
    description = "Project Label"
    type = string
}
