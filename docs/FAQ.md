# FAQ - multi-stage-evidence-guardian

**Q: What problem does this actually solve?**
A: Regulated Product Teams use the service to rotate workload credentials across tenant secrets, so audit packets are ready before review day.

Pain point: Security exceptions linger because ownership and expiry are not enforced.

**Q: Free to run?**
A: Yep. Supabase - $0/mo. See `terraform/INFRA_REQUIREMENTS.md`

**Q: Production ready?**
A: Yes - SLOs, security hardening, DR runbook, Helm, Terraform, monitoring.

**Q: Stack?**
A: Go, Kyverno, Vault, Falco, Sigstore, In-Toto, SLSA L3

**Q: What infra do I need?**
A: `terraform/INFRA_REQUIREMENTS.md` has the full breakdown - CPU/RAM/storage/network/cost.
