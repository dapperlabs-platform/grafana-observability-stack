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
    project = var.project_label
  }
  settings {
    dns {}
  }
}
