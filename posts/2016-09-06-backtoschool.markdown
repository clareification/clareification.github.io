--------------------------------------------
title: School starts, as do the cool proofs
author: Clare
slug: Infinity is still really cool.
--------------------------------------------

Classes at McGill have kicked off just as summer sputters to a muggy, humid halt in Montreal. I've fallen back into my old routines of running up (not-really-a-)mount(ain) royal in the mornings, hanging out in cafes to do work, and spending a small fortune on frozen mango. I've also learned a ton, so I'll get into that now. Outside of school, two main lessons were learned this week:

Number 1: wordpress is weird. Also, don't let random people make POST requests to your xmlrpc.php file if you have a wordpress site. You have to either install a plugin or change your server configuration, but it's very worth it if you don't want someone to brute-force your passwords.

Number 2: fill out doodles as quickly as possible if you have a conflict with any of the times proposed in them.

Inside school, my graph theory professor presented a fun problem to the class but didn't provide an optimal solution, so I'm going to briefly summarize it here because I thought it was super super cool. The problem goes as follows: You're lost in the woods and need to use your GPS to find your way back home. You forgot to put batteries in your GPS before you left, but luckily you have 8 batteries in your pocket! 4 of these are good, and 4 of them have been discharged, and you don't remember which is which. Your GPS takes 2 batteries, and only works if both of them are good. What strategy can you employ to find a pair of good batteries in as few attempts as possible?

This problem can be reworded as: given 8 nodes, how can you connect them with as few edges as possible such that you can pick any 4 of them and find an edge between 2 of the nodes you picked?

If you just randomly pick 1 battery at a time and try pairing it with all the other batteries you haven't picked yet, you'll be guaranteed to find a good pair within 23 guesses (23 being if you picked the 4 bad batteries first). That's a lot of guesses though. Another strategy involves pairing up all the batteries, and then if none of these pairings are good, choosing two of these pairs and trying each possible pairing between the 4 batteries in that subset. That guarantees you can find a good pairing in 8 tries.

We can actually do better though. Looking at the graph theory perspective: if you connect the 8 nodes by making 2 triangles of 3 nodes each and drawing a line between the two leftover nodes, you get an arrangement with the desired properties which only has 7 edges.

Apparently you can prove that this is impossible to do with 6 edges, but I couldn't think of an elegant or short proof of this so I'm not going to bother trying to prove it in this blog post.

