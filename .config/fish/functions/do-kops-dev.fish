function do-kops-dev
	clean-kops
set -gx KOPS_STATE_STORE s3://kops-dev.jobteaser.net-state-store
set -gx KOPS_CLUSTER_NAME k8s.dev.jobteaser.net
end
