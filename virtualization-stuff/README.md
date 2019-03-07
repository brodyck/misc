My laptop can do GPU passthrough, but it's a matter of figuring out how to get there with a Windows guest. Goal is to delete Windows.

Nvidia actively writes their drivers to detect when you try GPU passthrough on a non-workstation card **on Windows.** This whole process works simply with a Linux guest. So simply.

These are a few test configs I've saved, and some little shortcuts I've made.

---

My laptop doesn't match the configurations specified in the articles below, so I can't follow any guides. It takes a lot of time to test these things. I haven't finished yet.

Here's a github gist with documentation of GPU passthrough for gaming:
https://gist.github.com/Misairu-G/616f7b2756c488148b7309addc940b28

Here's one specifically for laptops:
https://github.com/jscinoz/optimus-vfio-docs

That repo isn't updated much, but this issue is kinda popular:
https://github.com/jscinoz/optimus-vfio-docs/issues/2

