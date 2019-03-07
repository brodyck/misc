This was a series of bash scripts I wrote to help set up my server.

It mostly used ZFS and LXC containers. I started creating a config file-type format for keeping configurations.

There's a feature where it sets permissions/users/groups properly so you can share files/folders between containers using network services without elevating the container's privileges. It was annoying.

I decided to call this project quits when I started to add support for clustering LXC containers. I wanted to actually USE these tools for another project, but got so caught up that I haven't started it yet. ffs.

Doesn't make sense to continue in bash, but it's useful.

