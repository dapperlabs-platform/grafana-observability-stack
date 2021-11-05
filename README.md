# Grafana Synthetic Monitoring

This module creates a grafana synthetic monitor that takes the job name and the target url as parameters

## To use this module, create a resource, and add the target_url e.g "www.dapperlabs.com" and the job_name, e.g "Dapperlabs Monitor" as shown below

```hcl
module "grafana-monitoring" {
    source = "../Shared/modules/grafana"
    job_name = "Flow Docs"
    cf_zone_name = "https://docs.onflow.org"
}
```

## Resources created

- Grafana Synthetic Monitoring Page


## Requirements

Terraform >= 1.0.0
