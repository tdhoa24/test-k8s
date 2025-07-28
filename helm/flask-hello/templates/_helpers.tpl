{{- define "flask-hello.name" -}}
flask-hello
{{- end }}

{{- define "flask-hello.fullname" -}}
{{ include "flask-hello.name" . }}
{{- end }}
