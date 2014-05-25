## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

One best practice immediately noticeable is that they compressed all of their HTML/ CSS to enhance the speed of the site. I don't see any reset css use but
it may just not be their intention for the site to have any special responsivity.

One area I don't see them following best practices is I don't see much done on the accessability side of the equation. They aren't using any of the screen reader
friendly properties like alt etc. 

Other than that it seems to just be a pretty straightforward list that makes use of tables and some styling for upvotes links etc.
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 

The ID's and classes seem to be used properly. Classes seem to be reused as they should and ID's seem to be relatively for unique styling needs.

Did you like the way they used HTML tags?  Please use examples with your arguments.

The tags seem a little weird, for starters each time I copy the HTML I see a bunch of closing tags for necessary elements like </body> and </html> 
but I don't see that originating tag. I am assuming it has something to do with the dev tools in Chrome.
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

I believe they did both. For starters, here is the stylesheet: <link rel="stylesheet" type="text/css" href="news.css?8JynwWWhD1otKS3gym1e">. So it is definitely making use of a separate stylesheet. I also see some specific style references hardcoded into the html such as here: <tr style="height:10px"></tr>. Here they are defining the table rows height not in a stylesheet.
 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

They definitely did, for starters everything at the top of the file: 
// hide arrows
// ping server
<form method="get" action="//hn.algolia.com/">
  Search: 
  <input type="text" name="q" value="" size="17">
</form>
<br>
byId('down_' + item).style.visibility = 'hidden';
byId('up_'   + item).style.visibility = 'hidden';
ping.src = node.href;
return document.getElementById(id);
return false; // cancel browser nav
var item = v[1];
var ping = new Image();
var v = node.id.split(/_/);   // {'up', '123'}
</center>
</td>
</tr>
</tbody>
</table>
</center>
</body>
</html>
<center>

	and the following CSS

.rotate180 {
  -webkit-transform: rotate(180deg);  /* Chrome and other webkit browsers */
  -moz-transform:    rotate(180deg);  /* FF */
  -o-transform:      rotate(180deg);  /* Opera */
  -ms-transform:     rotate(180deg);  /* IE9 */
  transform:         rotate(180deg);  /* W3C complaint browsers */

  /* IE8 and below */
  filter: progid:DXImageTransform.Microsoft.Matrix(M11=-1, M12=0, M21=0, M22=-1, DX=0, DY=0, SizingMethod='auto expand');
 
5) How did the authors organize the CSS file? Was it DRY?

They could definitely refactor it a little bit. For example both the title and default classes make use of the exact same styling. Same with BODY and TD.
 
6) Did the authors incorporate any responsive design into the site?

It looks minimally responsive, but they did. For example they adjust for the upvote arrows to work well on mobile devices despite pixel issues:
@media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2) {
  .votearrow { background-size: 10px; background-image: url("grayarrow2x.gif"); }
}
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?


Its pretty drab. I am guessing they were going for the reddit feel and to some extent that is Okay for mass information consumption, but I felt it could be redone as more accessible in general, more dry, and better kept.



Reflection:


I ran into a few technical difficulties that I worked around for times sake this week. The first was the Sublime package manager. Supposedly a package called Tag
can beautify compressed HTML for me, and I tried adding the repo but could not locate it to install. Instead I found an online beautification engine via Zack P on the bootcamp google site.

I felt like that was the main challenge of this exercise as the questions were relatively straightforward/ the webiste (HackerNews) is about as drab as you can get!