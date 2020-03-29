# Defined in - @ line 1
function do-kops-prod
	clean-kops
    set -gx KOPS_STATE_STORE s3://k8s.jobteaser.net-state-store
    set -gx KOPS_CLUSTER_NAME dev.k8s.jobteaser.net
end
