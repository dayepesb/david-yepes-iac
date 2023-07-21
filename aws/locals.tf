locals {
  /*
  env = {
    default = {

    }
    sandbox = {

    }
    prod = {

    }
  }
  */

  settings_path       = "./config/${terraform.workspace}.yaml"
  defaults_settings   = file("${path.module}/config.yaml")
  enviroment_settings = fileexists(local.settings_path) ? file(local.settings_path) : yamlencode({})
  settings = merge(
    yamldecode(local.defaults_settings),
    yamldecode(local.enviroment_settings)
  )

  /*
  environmentvars = contains(keys(local.env), terraform.workspace) ? terraform.workspace : "default"
  workspace       = merge(local.env["default"], local.env[local.environmentvars])
  */
}
