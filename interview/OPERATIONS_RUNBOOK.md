# Operations Runbook - multi-stage-evidence-guardian

Regulated Product Teams use the service to rotate workload credentials across tenant secrets, so audit packets are ready before review day.

**On-call? Read this first.**

## Deploy
```
kubectl apply -k k8s/ -n multi-stage-evidence-guardian
kubectl rollout status deploy/multi-stage-evidence-guardian -n multi-stage-evidence-guardian
```

## Rollback (when things go red)
```
./scripts/rollback.sh
# usually < 30sec
```

## Scale up NOW
```
kubectl scale deploy/multi-stage-evidence-guardian --replicas=10 -n multi-stage-evidence-guardian
```

## Logs
```
kubectl logs -l app=multi-stage-evidence-guardian -n multi-stage-evidence-guardian -f --tail=200
```

## Crashloop?
```
kubectl describe pod -l app=multi-stage-evidence-guardian -n multi-stage-evidence-guardian
kubectl logs <pod> --previous -n multi-stage-evidence-guardian
```
90% of the time: missing env var in ConfigMap.

## Metrics
`curl localhost:8080/metrics` or Grafana dashboard in `monitoring/`

## DR / Failover
See `docs/DISASTER_RECOVERY.md` - RTO 15m

We actually tested this. 11 min.
