package = "kong-jwt-custom"
version = "3.0-0"
source = {
  url = "https://github.com/scmp-contributor/kong-jwt-custom/archive/v3.0.0.tar.gz",
  file = "v3.0.0.tar.gz",
  dir = "kong-jwt-custom-3.0.0",
  tag = "v3.0.0"
}
description = {
  summary = "A Kong JWT plugin with added claims to request headers",
  license = "MIT",
  homepage = "https://github.com/scmp-contributor/kong-jwt-custom"
}
dependencies = {
  "lua ~> 5.1",
  "kong >= 3.3",
  "jsonpath >= 1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt-custom.claim_headers"]  = "claim_headers.lua",
    ["kong.plugins.jwt-custom.daos"]  = "daos.lua",
    ["kong.plugins.jwt-custom.handler"] = "handler.lua",
    ["kong.plugins.jwt-custom.jwt_parser"]  = "jwt_parser.lua",
    ["kong.plugins.jwt-custom.schema"]  = "schema.lua"
  }
}
