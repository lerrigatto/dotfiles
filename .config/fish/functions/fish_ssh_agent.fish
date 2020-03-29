function __ssh_agent_is_started -d "check if ssh agent is already started"
   set -e SSH_AGENT_PID
	 source $SSH_ENV

   if test -z "$SSH_AGENT_PID"
      return 1
   end

   ps $SSH_AGENT_PID >/dev/null
   return $status
end


function __ssh_agent_start -d "start a new ssh agent"
   ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
   chmod 600 $SSH_ENV
   echo "sourcing ssh agent env"
   source $SSH_ENV > /dev/null
   true  # suppress errors from setenv, i.e. set -gx
end


function fish_ssh_agent --description "Start ssh-agent if not started yet, or uses already started ssh-agent."
   if test -z "$SSH_ENV"
      set -xg SSH_ENV $HOME/.ssh/environment
   end

   if not __ssh_agent_is_started
      __ssh_agent_start
   end
end
