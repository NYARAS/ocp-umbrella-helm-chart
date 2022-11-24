{{/*
If demo.version is not defined, use by defaul the Chart's appVersion
*/}}
{{- define "demo.version" -}}
{{- default .Chart.AppVersion .Values.build.s2i.version -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "demo.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "demo.labels" -}}
helm.sh/chart: {{ include "demo.chart" . }}
{{ include "common.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "demo.metadata.labels" -}}
metadata:
  labels:
  {{- include "demo.labels" . | nindent 4 }}
{{- end -}}
