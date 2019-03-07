Spoiler alert: Nvidia actively writes their drivers to detect when someone uses GPU passthrough on a non-workstation card. This whole process works simply with a Linux guest.

My laptop can do GPU passthrough, but it's a matter of figuring out the configuration or code needed to change to get it to work.

These are a few test configs I've saved, and some little shortcuts I've made.

Goal is to delete windows. I'd love to figure this out, but I've gotta get other stuff done.

Here's a github gist with documentation of GPU passthrough for gaming:
https://gist.github.com/Misairu-G/616f7b2756c488148b7309addc940b28

Here's one specifically for laptops:
https://github.com/jscinoz/optimus-vfio-docs

That repo isn't updated much, but this issue is kinda popular:
https://github.com/jscinoz/optimus-vfio-docs/issues/2

