# Demo chart using Umbrella Helm Chart for Dry OCP Microservice Deployment

![Version: 1.4.0](https://img.shields.io/badge/Version-1.4.0-informational?style=for-the-badge) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=for-the-badge) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=for-the-badge)

## Description

Build and Deploy demo applications on OpenShift

### Installing the Chart

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| build.enabled | bool | `false` |  |
| deploy.containerPort | int | `8081` |  |
| deploy.enabled | bool | `true` |  |
| deploy.livenessProbe | string | `nil` |  |
| deploy.readinessProbe | string | `nil` |  |
| deploy.replicas | int | `1` |  |
| deploy.resources.limits.cpu | string | `"200m"` |  |
| deploy.resources.limits.memory | string | `"400M"` |  |
| deploy.resources.requests.cpu | string | `"100m"` |  |
| deploy.resources.requests.memory | string | `"200M"` |  |
| deploy.route.enabled | bool | `true` |  |
| deploy.route.tls.enabled | bool | `true` |  |
| deploy.route.tls.insecureEdgeTerminationPolicy | string | `"Redirect"` |  |
| deploy.route.tls.termination | string | `"edge"` |  |
| deploy.servicePort | int | `8081` |  |
| environment | object | `{}` |  |
| global.environment | object | `{}` |  |
| global.maxReplicas | int | `4` |  |
| global.minReplicas | int | `1` |  |
| global.replicaCount | int | `1` |  |
| global.targetCPUup | int | `75` |  |
| image.name | string | `"twalter/openshift-nginx"` |  |
| image.tag | string | `"latest"` |  |
| secrets | object | `{}` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| OC | <name-istakenn@gmail.com> | <https://calvineotieno.com> |

## Legal Disclaimer 👮

