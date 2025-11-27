{{- define "admin-ms.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- /*
Return the full name of the release
*/ -}}
{{- define "admin-ms.fullname" -}}
{{- $name := include "admin-ms.name" . -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- /*
Return the labels for all resources
*/ -}}
{{- define "admin-ms.labels" -}}
app.kubernetes.io/name: {{ include "admin-ms.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
