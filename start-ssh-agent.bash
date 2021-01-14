
#!/bin/bash
SSHAGENT=/usr/bin/ssh-agent

export SSH_AGENT_PID=$(pgrep ssh-agent)

SSH_AUTH_SOCK=$( ls -1 /tmp/ssh-*/* 2>/dev/null | head -n 1 )

if [[ $(pgrep ssh-agent) == "" ]]; then
  rm -r /tmp/ssh-* &>/dev/null;
  eval $($SSHAGENT -s)
  ssh-add $1
else
  export SSH_AUTH_SOCK=${SSH_AUTH_SOCK}
  export SSH_AGENT_PID=$(ps -f|grep ssh-agent|awk '{print $2}')
fi

