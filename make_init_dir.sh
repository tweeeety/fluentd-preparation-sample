# slink
mkdir -p /var/log/td-agent/project/slink

# pos
mkdir -p /var/log/td-agent/project/pos

# buffer
mkdir -p /var/log/td-agent/project/buffer

# out
mkdir -p /var/log/td-agent/project/forward

# inside
mkdir -p /var/log/td-agent/project/inside

# nomatched
mkdir -p /var/log/td-agent/project/unmatched

# flowcounter
mkdir -p /var/log/td-agent/project/flowcounter

# change owner
chown -R td-agent:td-agent /var/log/td-agent/project
