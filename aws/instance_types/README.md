## Requirements

No requirements.

## Providers

The following providers are used by this module:

- aws

## Required Inputs

No required input.

## Optional Inputs

The following input variables are optional (have default values):

### aws\_region

Description: Region that terraform module will be run in.

Type: `string`

Default: `"us-west-2"`

### instance\_classes

Description: Instance classes to lookup.

Type: `list(string)`

Default:

```json
[
  "*"
]
```

## Outputs

The following outputs are exported:

### instance\_types

Description: Instance types in the region specified based on the instance classes requested.

