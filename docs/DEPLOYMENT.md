# Deployment - multi-stage-evidence-guardian

**Use case:** Regulated Product Teams use the service to rotate workload credentials across tenant secrets, so audit packets are ready before review day.

## Infra requirements
→ `terraform/INFRA_REQUIREMENTS.md` - CPU/RAM/storage/network/cost breakdown

## GitOps
Flux watches `main` and reconciles changes automatically.

## Rollback
```
./scripts/rollback.sh
kubectl rollout undo deploy/multi-stage-evidence-guardian -n multi-stage-evidence-guardian
```
Usually < 30 sec.

## Cost
Supabase - $0/mo

The focus is supply-chain hardening: SBOMs, Cosign signatures, and policy enforcement across build and deploy.
