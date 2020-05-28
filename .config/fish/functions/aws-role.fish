# Defined in - @ line 2
function aws-role
	aws-create-creds
  eval (awsu -p$argv)
  echo "Remember: don't drink and prod"
end
