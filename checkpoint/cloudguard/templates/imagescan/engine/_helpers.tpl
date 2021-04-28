{{- define "imagescan.engine.config" -}}
{{- $config := (include "get.root" .) | fromYaml }}
{{- $_ := set $config "featureName" "imagescan" }}
{{- $_ := set $config "agentName" "engine" }}
{{- $_ := set $config "featureConfig" $config.Values.addons.imageScan }}
{{- $_ := set $config "agentConfig" $config.Values.addons.imageScan.engine }}
{{- $config | toYaml -}}
{{- end -}}

{{- define "imagescan.daemon.resource.name" -}}
{{- $daemonConfig := fromYaml (include "imagescan.daemon.config" .) -}}
{{ template "agent.resource.name" $daemonConfig }}
{{- end -}}