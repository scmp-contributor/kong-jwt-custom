local claim_headers = {}

local jp = require "jsonpath"


local kong = kong

-- Maps claim json path to request headers key
local mapping = {
  ["$.drupal.uid"] = "X-Consumer-Token-User-Id",
  ["$.sub"] = "X-Consumer-Token-User-Uuid",
  ["$.iss"] = "X-Consumer-Token-Issuer",
  ["$.drupal.roles"] = "X-Consumer-Token-User-Roles",
  ["$.drupal.email"] = "X-Consumer-Token-User-Email"
}

function claim_headers.set(jwt)
  if not jwt then return end

  local set_header = kong.service.request.set_header
  local clear_header = kong.service.request.clear_header
  local claims = jwt.claims
  if not claims then return end

  for json_path, request_header in pairs(mapping) do
    local claim_value = jp.value(claims, json_path)
    if (type(claim_value) == "table") then
      claim_value = table.concat(claim_value, ", ")
    end
    if claim_value ~= nil then
      set_header(request_header, claim_value)
    else
      clear_header(request_header)
    end
  end
end

function claim_headers.reset()
  local clear_header = kong.service.request.clear_header
  for json_path, request_header in pairs(mapping) do
    clear_header(request_header)
  end
end

return claim_headers