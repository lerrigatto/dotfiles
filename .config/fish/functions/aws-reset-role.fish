function aws-reset-role
	rm -rf ~/.aws/cli/cache
  set -e ASSUMED_ROLE 
  set -e AWS_ACCESS_KEY_ID 
  set -e AWS_SECRET_KEY 
  set -e AWS_SECRET_ACCESS_KEY 
  set -e AWS_SESSION_TOKEN 
  set -e AWS_SECURITY_TOKEN 
  set -e AWS_PROFILE
  echo "Role cleared"
end
