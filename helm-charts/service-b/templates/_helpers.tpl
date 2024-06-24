{{/*
Expand the name of the chart.
*/}}
{{- define "service-b.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a name for the service.
*/}}
{{- define "service-b.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create labels for the service.
*/}}
{{- define "service-b.labels" -}}
app.kubernetes.io/name: {{ include "service-b.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end -}}

{{/*
Create selector labels for the service.
*/}}
{{- define "service-b.selectorLabels" -}}
app.kubernetes.io/name: {{ include "service-b.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}
