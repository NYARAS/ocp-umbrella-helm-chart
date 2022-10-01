{{/*
Expand the name of the chart.
*/}}
{{- define "common.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "common.fullName" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
common.appImageName is the name of the application image that is built/deployed
*/}}
{{- define "common.appImageName" -}}
{{ default (include "common.appName" .) .Values.image.name }}
{{- end -}}

{{/*
common.appImage is the name:tag of the application image of of the application image that is built/deployed
*/}}
{{- define "common.appImage" -}}
{{ include "common.appImageName" . }}:{{ .Values.image.tag}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "common.appName" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "common.selectorLabels" -}}
app.kubernetes.io/name: {{ include "common.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Image pull secret to build the application image
*/}}
{{- define "common.buildconfig.pullSecret" -}}
{{- if .Values.build.pullSecret}}
{{- if lookup "v1" "Secret" .Release.Namespace .Values.build.pullSecret }}
pullSecret:
  name: {{ .Values.build.pullSecret }}
{{ else }}
{{ fail (printf "Secret '%s' to pull images does not exist." .Values.build.pullSecret) }}
{{- end }}
{{- end }}
{{- end }}
