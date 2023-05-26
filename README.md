## A custom Kong JWT plugin
  
forked from [Kong JWT plugin](https://github.com/Kong/kong/tree/3.3.0/kong/plugins/jwt)  
  
Changes:
- removed migrations files since we support db-less mode only
- claim headers implementation from [https://github.com/scmp-contributor/kong-jwt-claim-headers](https://github.com/scmp-contributor/kong-jwt-claim-headers)

**DO NOT** use this plugin together with the original Kong JWT plugin.

