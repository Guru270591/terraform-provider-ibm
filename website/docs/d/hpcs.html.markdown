---
subcategory: "Hyper Protect Crypto Services"
layout: "ibm"
page_title: "IBM : Hyper Protect Crypto Services instance"
description: |-
  Get information on an IBM Cloud Hyper Protect Crypto Services Instance.
---

# ibm\_hpcs

Imports a read only copy of an existing Hyper Protect Crypto Services resource.

## Example Usage

```terraform
data "ibm_hpcs" "hpcs_instance" {
  name    = "test"
}
```

## Argument Reference

The following arguments are supported:

* `name` - (Required, string) The name used to identify the Hyper Protect Crypto Services instance in the IBM Cloud UI.
* `resource_group_id` -(Optional, string) The Id of Resource Group.
* `location` - (Optional, String) The location for this Hyper Protect Crypto Services instance

## Attribute Reference

In addition to all arguments above, the following attributes are exported:

* `crn` - (String) CRN of the Hyper Protect Crypto Services instance
* `extensions` - (List) The extended metadata as a map associated with the resource instance.
* `guid` - (String) Unique identifier of resource instance.
* `hsm_info` - (List) HSM config of the crypto units.
  Nested scheme for `hsm_info`:
  * `admins` - (List) List of Admins for crypto units
    Nested scheme for `admins`:
      * `name` - (String) Name of Admin
      * `ski` - (String) Subject Key Identifier of the administrator signature key
  * `current_mk_status` - (String) Status of Current Master Key Register
  * `current_mkvp` - (String) Current Master Key Register Verification Pattern.
  * `hsm_id` - (String) HSM ID
  * `hsm_location` - (String) HSM Location
  * `hsm_type` - (String) HSM Type.
  * `new_mk_status` - (String) Status of New Master Key Register
  * `new_mkvp` - (String) New Master Key Register Verification Pattern
  * `revocation_threshold` - (Int) Revocation Threshold for Crypto Units
  * `signature_threshold`- (Int) Signature Threshold for Crypto Units
* `failover_units` - (Int) The number of failover crypto units for your service instance
* `id` - (String) The unique identifier CRN of this Hyper Protect Crypto Services instance.
* `plan` - (String) The pricing plan for your service instance.
* `service` - (String) The service type (`hs-crypto`) of the instance.
* `service_endpoints` - (String) The network access to your service instance. Possible values are `public-and-private`, `private-only`.
* `status` - (String) Status of the Hyper Protect Crypto Services instance.
* `units` -(Int) The number of operational crypto units for your service instance.
