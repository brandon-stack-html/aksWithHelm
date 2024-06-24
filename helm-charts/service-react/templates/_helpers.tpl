{{/*
Expand the name of the chart.
*/}}
{{- define "service-react.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a name for the service.
*/}}
{{- define "service-react.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create labels for the service.
*/}}
{{- define "service-react.labels" -}}
app.kubernetes.io/name: {{ include "service-react.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end -}}

{{/*
Create selector labels for the service.
*/}}
{{- define "service-react.selectorLabels" -}}
app.kubernetes.io/name: {{ include "service-react.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}
