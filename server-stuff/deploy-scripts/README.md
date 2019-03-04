This was a series of bash scripts I wrote to help set up my server.

The point where I decided to call this project quits is where I started to add support for clustering LXC containers. I wanted to actually USE these tools for another project, but got so lost in this that I haven't started it yet. ffs.

There's also a feature where it sets permissions/users/groups properly so you can share files/folders between containers using network stuff. That part took the most work.

It mostly used ZFS and LXC containers. I started creating a config file-type format for keeping configurations.

It started off small but grew to the point where it didn't make sense in bash. I keep it because it's really useful..

