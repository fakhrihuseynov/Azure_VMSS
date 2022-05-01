Earlier, GFM allowed you to create colored text this way:
<font color="red">Status: **Not yet implemented**</font>

That used to work. But at some point the <font> tag was removed from the HTML sanitization whitelist.

I suppose it got removed because it's deprecated in HTML5. (Aside: the color attribute is still on the whitelist. Should it be removed too? As far as I know, there's no other HTML tag it can be used on...)

So, can we have a new supported way of coloring text in sanitized GFM now?

Here's one possibility: allow a very strict use of style for setting colors. Only attributes that exactly match the form style="color: #xxxxxx" would be permitted. For something as constrained as that, you could enforce it with a simple regexp like ^color:\s*#([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$.
