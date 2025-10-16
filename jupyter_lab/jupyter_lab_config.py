import os
from IPython.lib import passwd

c = get_config()

# Security - only listen on localhost
c.ServerApp.ip = 'localhost'
c.ServerApp.port = 8888

# No browser opening
c.ServerApp.open_browser = False

# Notebook directory
c.ServerApp.notebook_dir = os.path.expanduser('~/jupyter/notebooks')

# Extra security
c.ServerApp.allow_remote_access = False
c.ServerApp.allow_root = False

# Token for initial access (you'll see it in logs)
# c.ServerApp.token = ''

# Or set a password (run: jupyter server password)