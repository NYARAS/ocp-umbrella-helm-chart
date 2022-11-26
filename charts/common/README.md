# Umbrella Helm Chart for Dry OCP Microservice Deployment

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

## Description

A library chart for microservice based applications deployment to OCP

## Usage

Please add the common repository before installing any chart provided by this repository:

```bash
helm repo add common https://nyaras.github.io/ocp-umbrella-helm-chart
helm repo update
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| build.enabled | bool | `false` |  |
| deploy.containerPort | int | `8081` |  |
| deploy.enabled | bool | `true` |  |
| deploy.livenessProbe | string | `nil` |  |
| deploy.readinessProbe | object | `{"httpGet":{"path":"/health/ready","port":"admin"}}` | Freeform readinessProbe field. @default HTTP Get on <ip>:admin/health/live |
| deploy.replicas | int | `1` |  |
| deploy.resources | object | `{}` |  |
| deploy.route.enabled | bool | `true` |  |
| deploy.route.tls.enabled | bool | `true` |  |
| deploy.route.tls.insecureEdgeTerminationPolicy | string | `"Redirect"` |  |
| deploy.route.tls.termination | string | `"edge"` |  |
| deploy.servicePort | int | `8081` |  |
| environment | object | `{}` |  |
| global.environment | object | `{}` |  |
| global.maxReplicas | int | `4` |  |
| global.minReplicas | int | `1` |  |
| global.replicaCount | int | `1` | Numbers of replicas |
| global.targetCPUup | int | `75` |  |
| image.name | string | `"twalter/openshift-nginx"` | The docker image repository to use |
| image.tag | string | `"latest"` | @default Chart version |
| secrets | object | `{}` |  |

**Homepage:** <https://github.com/nyaras/ocp-umbrella-helm-chart>

## Source Code

* <https://github.com/nyaras/ocp-umbrella-helm-chart>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| OC | <email.is-taken@gmail.com> | <https://calvineotieno.com> |
