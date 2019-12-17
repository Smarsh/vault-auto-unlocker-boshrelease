#!/usr/bin/env bash
sleep 10
<% p('vault.unseal_keys').each do |key| -%>
/var/vcap/packages/vault/bin/vault operator unseal -address=https://localhost:<%= p('vault.port') %> -tls-skip-verify <%= key %>
<% end %>
