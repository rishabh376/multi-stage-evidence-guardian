# Setup - multi-stage-evidence-guardian

Regulated Product Teams use the service to rotate workload credentials across tenant secrets, so audit packets are ready before review day.

1. **Infra first**: `cd terraform && terraform init && terraform apply`
2. `kubectl apply -k k8s/ -n multi-stage-evidence-guardian`
3. `kubectl port-forward svc/multi-stage-evidence-guardian 8080:80 -n multi-stage-evidence-guardian`
4. `curl localhost:8080/healthz`

Env vars: `PORT=8080`, `LOG_LEVEL=info`

Runtime detection and telemetry let us prove the security controls are actually working in prod.
