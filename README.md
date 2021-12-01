# Grafana Synthetic Monitoring DEPRECATED
Use github.com:dapperlabs-platform/terraform-grafana-synthetic-monitoring-checks.git instead

This module creates a grafana synthetic monitor that takes the job name and the target url as parameters

## To use this module, create a resource, and add the target_url e.g "www.example.com" and the job_name, e.g "Example Monitor" as shown below

```hcl
module "grafana-monitoring" {
    source = "../Shared/modules/grafana"
    job_name = "Flow Docs"
    cf_zone_name = "https://example.com"
}
```

## Resources created

- Grafana Synthetic Monitoring Page


## Requirements

Terraform >= 1.0.0
