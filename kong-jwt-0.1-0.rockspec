package = "kong-jwt"
version = "0.1-0"
source = {
  url = "https://github.com/scmp/kong-jwt/archive/v0.1.0.tar.gz",
  file = "v0.1.0.tar.gz",
  dir = "kong-jwt-0.1.0",
  tag = "v0.1.0"
}
description = {
  summary = "A Kong JWT plugin with added claims to request headers",
  license = "MIT",
  homepage = "https://github.com/scmp/kong-jwt"
}
dependencies = {
  "lua ~> 5.1",
  "kong >= 0.10",
  "jsonpath >= 1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.jwt.handler"] = "handler.lua",
    ["kong.plugins.jwt.schema"]  = "schema.lua",
    ["kong.plugins.jwt.api"]  = "api.lua",
    ["kong.plugins.jwt.asn_sequence"]  = "asn_sequence.lua",
    ["kong.plugins.jwt.daos"]  = "daos.lua",
    ["kong.plugins.jwt.claim_headers"]  = "claim_headers.lua"
    ["kong.plugins.jwt.jwt_parser"]  = "jwt_parser.lua"
  }
}
