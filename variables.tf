variable "monitoring_data" {
    description = "A map of target_url, job_name and project_label for Synthetic monitoring"
    type        = map(list(string))
}

# variable "job_name" {
#   description = "This is the name you want to give to your Synthetoc Monitor"
#   type        = map(list(string))
# }

# variable "target_url" {
#   description = "This is the http url for the website endpoint you want to monitor"
#   type        = map(list(string))
# }

# variable "record_name" {
#     description = "The record name to create on cloudflare. e.g <record_name>.dapperlabs.com"
#     type = string
#     default = ""
# }

# variable "cf_zone_name" {
#     description = "The zone name if not automatically generated from the datasource, e.g dapperlabs.com"
#     type = string
#     default = ""
# }

# variable "grafana_url" {
#     description = "Grafana URL"
#     type = string
#     default = "https://dapperlabs.grafana.net/"
# }

# variable "grafana_folder_title" {
#     description = "Grafana Folder Name"
#     type = string
# }

# variable "dashboard_config_file" {
#     description = "Path to Grafana Dashboard Config FIle"
#     type = string
# }


# variable "datasource_type" {
#     description = "Grafana datasource type"
#     type = string
# }

# variable "datasource_url" {
#     description = "Grafana datasource url"
#     type = string
# }

# variable "datasource_name" {
#     description = "Grafana datasource Name"
#     type = string
# }

# variable "project_label" {
#     description = "Project Label"
#     type = string
# }
