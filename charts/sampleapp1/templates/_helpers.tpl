{{/*
Expand the name of the chart.
*/}}
{{- define "sampleapp1.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "sampleapp1.labels" -}}
{{ include "sampleapp1.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "sampleapp1.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sampleapp1.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


