# Qoof Terraform Modules

This Terraform module is responsible for provisioning **qoof** IAM resources(IAM trust/roles).

This module is considered a *Global* module and only needs to be provisioned 1 time per AWS Account.

## Incorporating this Module
* Add this code to your provider file
* The **qoof_external_id** must be obtained from qoofand different AWS accounts have different external IDs.

```
module "qoof" {
  source                  = "git::https://github.com/qoof/aws-terraform-scans.git"
  qoof_external_id        = "${var.qoof_external_id}"
}
```
## 👬 Support
- Open pull request with improvements
- Discuss ideas in issues
- Email: anmol@clouddrove.com
- Reach out with any feedback [![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/anmol_nagpal.svg?style=social&label=Follow%20%40anmol_nagpal)](https://twitter.com/anmol_nagpal)
