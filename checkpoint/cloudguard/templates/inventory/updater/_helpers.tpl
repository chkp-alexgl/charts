{{- define "inventory.updater.config" -}}
{{- $config := (include "get.root" .) | fromYaml }}
{{- $_ := set $config "featureName" "inventory" }}
{{- $_ := set $config "agentName" "updater" }}
{{- $_ := set $config "featureConfig" $config.Values.inventory }}
{{- $_ := set $config "agentConfig" $config.Values.inventory.updater }}
{{- $config | toYaml -}}
{{- end -}}
