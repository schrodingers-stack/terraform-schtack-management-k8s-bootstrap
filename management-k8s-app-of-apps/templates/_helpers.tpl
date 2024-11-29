{{/*
Expand the name of the chart.
*/}}
{{- define "mgmt-app-of-apps.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mgmt-app-of-apps.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mgmt-app-of-apps.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- default .Values.clusterName .Values.nameOverride -}}
{{- end -}}
{{- end -}}

{{/*
Define shared labels.
*/}}
{{- define "mgmt-app-of-apps.labels" -}}
helm.sh/chart: {{ include "mgmt-app-of-apps.chart" .context }}
app.kubernetes.io/managed-by: {{ .context.Release.Service }}
app.kubernetes.io/part-of: {{ .context.Chart.Name }}
{{- with .context.Values.additionalLabels }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Construct the namespace for all namespaced resources.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
Preserve the default behavior of the Release namespace if no override is provided.
*/}}
{{- define "mgmt-app-of-apps.namespace" -}}
{{- default .Release.Namespace .Values.namespaceOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}
