{{/* Expands the name of the server. */}}
{{- define "server.name" -}}
{{- include "sanitize" (cat (include "chart.fullname" .) "server" ) -}}
{{- end -}}

{{/* Expands selector labels of the server. */}}
{{- define "server.selector" -}}
{{ include "chart.selector" . }}
app.kubernetes.io/component: "server"
app: "{{ include "server.name" . }}"
{{- end -}}

{{/* Expand common labels of the server. */}}
{{- define "server.labels" -}}
{{ include "chart.labels" . }}
{{ include "server.selector" . }}
{{- end -}}

{{/* Expand annotation labels of the server. */}}
{{- define "server.annotations" -}}
{{- $annotations := merge .Values.server.annotations .Values.annotations -}}
{{- with $annotations }}
{{ include "quote.object" -}}
{{- end -}}
{{- end -}}
