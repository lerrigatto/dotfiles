function aws-token
	aws-create-creds
awsu token -pjobteaser | xclip -selection clipboard $argv
end
