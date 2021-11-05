# locals {
#     monitoring_stacks_data = flatten([
#         for k, v in var.monitoring_stack :
#         [for i in v : {k : k, i : i}]
#     ])

#     monitoring_stack_list = {
#         for j in local.monitoring_stacks_data : "${j.k}" => j
#     }
# }

resource "grafana_folder" "collection" {
  title = var.grafana_folder_title
}

resource "grafana_dashboard" "metrics" {
  folder      = grafana_folder.collection.id
  config_json = var.dashboard_config_file
}

resource "grafana_data_source" "data_source_stack" {
  type = var.data_source_type
  name = var.data_source_name
  url  = var.data_source_url
#   basic_auth_enabled = var.basic_auth_enabled
#   basic_auth_username = var.basic_auth_username
#   basic_auth_password = var.basic_auth_password
#   password = var.password
#   username = var.username
}


data "grafana_synthetic_monitoring_probes" "main" {}

resource "grafana_synthetic_monitoring_check" "dns" {
  job     = var.job_name
  target  = var.target_url
  enabled = false
  probes = [
    data.grafana_synthetic_monitoring_probes.main.probes.Atlanta,
    data.grafana_synthetic_monitoring_probes.main.probes.Amsterdam,
    data.grafana_synthetic_monitoring_probes.main.probes.LosAngeles,
    data.grafana_synthetic_monitoring_probes.main.probes.Chicago,
    data.grafana_synthetic_monitoring_probes.main.probes.Dallas,
    data.grafana_synthetic_monitoring_probes.main.probes.Frankfurt,
    data.grafana_synthetic_monitoring_probes.main.probes.London,
    data.grafana_synthetic_monitoring_probes.main.probes.Miami,
    data.grafana_synthetic_monitoring_probes.main.probes.NewYork,
    data.grafana_synthetic_monitoring_probes.main.probes.Toronto,
  ]
  labels = {
    project = var.project_name
  }
  settings {
    dns {}
  }
}
