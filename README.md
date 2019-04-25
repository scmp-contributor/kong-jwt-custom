## A custom Kong JWT plugin
  
forked from [Kong JWT plugin](https://github.com/Kong/kong/tree/master/kong/plugins/jwt)  
  
Changes:  
- claim headers implementation from [https://github.com/scmp-contributor/kong-jwt-claim-headers](https://github.com/scmp-contributor/kong-jwt-claim-headers)  
- responses token verification errors even anonymous consumer is set

**DO NOT** use this plugin together with the original Kong JWT plugin.

