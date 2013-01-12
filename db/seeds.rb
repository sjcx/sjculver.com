# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Content.delete_all
content_seeds = [{title: 'Escape to Alcatraz', excerpt: '<p>Alcatraz Island, 
  understandably, does not bill itself as a place to spend twenty-eight dollars
  to get really depressed about a country\'s piss-poor priorities regarding human rights.</p>', url: 
  'http://www.guernicamag.com/features/escape-to-alcatraz/', tag: 'SA'},
  {title: 'Class on Campus', excerpt: '<p>The campus had a support 
  system for students with disabilities, international students, and English-language 
  learners, but little attention was given to the needs of the first-generation, 
  working-class/working-poor, or rural students who made up a sizable part of the 
  campus.</p>', url: 'http://chronicle.com/article/Lets-Help-Them-Speak-Up/135706/', tag: 'SA'}, {title: 
  '<i>Laura Lamont\'s Life in Pictures</i>', excerpt: '<p>There\'s a pleasant familiarity to the plot 
  of Emma Straub\'s debut novel, <i>Laura Lamont\'s Life in Pictures,</i> whose protagonist\'s 
  life traverses the arc of a Hollywood biopic: early tragedy, rise to stardom, dalliance 
  with addiction and finally, tentative happiness in old age. But here is something new: 
  The superstar is nice.</p>', url: 'http://www.startribune.com/entertainment/books/169664686.html', tag: 'review'},
  {title: '<i>The Book of Mischief</i>', excerpt: '<p>Odd and wondrous things happen on the Pinch\'s 
  North Main Street: men fly, boys climb trees and enter their neighbors\' dreams, and 
  Death himself appears to yank one reluctant soul into the afterlife. It\'s magical 
  realism, transplanted to the American South.</p>', url: 'http://www.startribune.com/entertainment/books/169664666.html?refer=y', tag: 'review'},
  {title: '<i>This Bright River</i>', excerpt: '<p>Praised for the narrative economy of his first 
  novel, <i>The Cradle,</i> Somerville adopts a more expansive approach in <i>This Bright River</i>. 
  The book seesaws through time and space, and, like any good video game, has enough 
  side stories and dead-end leads to feel immersive.</p>', url: 'http://www.sfgate.com/books/
  article/This-Bright-River-by-Patrick-Somerville-3723809.php', tag: 'review'}, {title: 'Lena Dunham\'s <i>Girls</i>', 
  excerpt: '<p>TL;DR: the boss doesn\'t offer to pay Hannah for her work and rescinds his offer to 
  read her manuscript once she finishes it. "But who will read it if you\'re not here?" he 
  says. Hahahaha. Ya burnt, 23-year-old memoirist.</p>', url: 'http://bygonebureau.com/2012/04/16/the-lena-dunham-show/', tag: 'humor'},
  {title: '<i>Lightning Rods</i>', excerpt: '<p>This tone is remarkable in its seamlessness and verve, 
  carrying forward DeWitt\'s flat, textbook satire without falter. This satire is one 
  without a straight man or voice of reason,either -- rather than being repelled by the madness 
  that surrounds him, Joe is the engineer of it. A certain type of reader will find this deadpan 
  cycle of profitability very funny.</p>', url: 'http://www.startribune.com/entertainment/books/136599158.html', tag: 'review'},
  {title: 'Getting Out', excerpt: '<p>Instead of writing, I was watching television. Sometimes I took breaks 
  from the television to Google <i>Reporting neighbors for not shoveling sidewalks--Minneapolis</i>.</p>', url:
  'http://www.themillions.com/2011/10/getting-out-escaping-with-joan-didion.html', tag: 'essay'}, {title: 'Chucking
  Your V. S. Naipaul Books into a Dumpster', excerpt: '<p>Step seven: Feel very satisfied that although 
  you did not actually destroy any literature or <i>technically</i> suppress anyone\'s voice 
  (like that stupid patriarchy), the Naipaul novels are unlikely to tempt any potential readers 
  in their current condition.<p>', url: 'http://300reviews.com/2011/07/27/98-chucking-your-v-s-naipaul-books-into-a-dumpster/', tag: 'humor'},
  {title: 'What\'s Invisible at Harvard: A Conversation', excerpt: '<p>Dorm Crew is actually a good 
  shorthand for the class situation at Harvard. To some people the service is totally invisible, 
  and to most of the people doing it (at least, to me) it is a window into a world that is equally 
  invisible. A world where you\'d abandon a brand new Burberry scarf ($325).</p>', url: '
  http://www.theawl.com/2011/07/whats-invisible-at-harvard-a-conversation', tag: 'SA'}, {title: '<i>American Masculine</i>',
  excerpt: '<p>Ray\'s narratives often proceed in a nonlinear, mosaic fashion, a structure that at its best 
  has the effect of galvanizing a story\'s scenes into genuine emotion.</p>', url: 'http://www.startribune.com/entertainment/books/124438529.html', tag: 'review'}, 
  {title: 'Going Gray: Conversations', excerpt: '<p><b>Hair Stylist #1:</b> Grays, you know. They\'re
  so crazy! Getting older is crazy. Everything changes. </p> <p> <b>Me:</b> I\'m 26.</p>', url: 
  'http://bygonebureau.com/2011/06/22/going-gray-conversations/', tag: 'humor'}, {title: 'On Expectations', excerpt:
  '<p>Low expectations are not a recipe for good self-care. You get sour; you drink too much wine;
  you stop reading because everything you read makes you even more sour; you go on diatribes against successful 
  young writers in the kitchens at parties. You definitely are not working out.</p>', url: 
  'http://www.theawl.com/2011/03/on-expectations-and-a-writers-lack-of-same', tag: 'essay'}, {title: 'First-Order
  Differential Equations', excerpt: '<p>So, if this moment marks Jeremy\'s turn toward recovery, 
  his first foray into an emotion other than sadness, we can assume again the faulty model that as time 
  (<i>t</i>) passes, grief (<i>g</i>) declines until the general level of human malaise (<i>m</i>) 
  is reached, which we will call the <b>equilibrium solution</b>.</p>', url: 'http://www.puertodelsol.org/assets/pdfs/45.2%20PDFs/culver-first-order-differential%20equations.pdf', tag: 'fiction'},
  {title: 'Three Stories', excerpt: '<p>I\'ll tell Carlo that I cheated on him today. It\'s very easy. 
  All I have to do is say, "Carlo, I slept with your brother." Easy. Very, very easy. Just six words.</p>', url:
  'http://twincitiesrunoff.com/2011/06/three-stories-by-sj-culver/', tag: 'fiction'}, {title: '<i>Porch Sofa Almanac</i>', excerpt: '
  <p>One can sense how Peter Smith might feel about this all-pervasive technological creep. Smith on nature 
  writing: "fundamentally positive and reassuring." Smith on election night radio: "to heck with the 
  Internet and TV and all those new media."</p>', url: 'http://www.startribune.com/entertainment/books/103937433.html', tag: 'review'},
  {title: 'How to Email Your Instructor', excerpt: '<p><b>No:</b> "My roommate has scabies."</p> <p>
  <b>No:</b> "It\'s just really hard to focus on your class when I really want to be with my boyfriend in Europe."
  </p><p><b>No:</b> "I have scabies."</p>', url: 'http://therumpus.net/2010/07/funny-women-29-rules-for-emailing-your-instructor/', tag: 'humor'},
  {title: 'Your Conduct and Aspect on Public Transit', excerpt: '<p>My greetings, future lover!  Your 
  countenance is that of a weary angel, and your tight-gripped travel mug a wonder of the metallurgical 
  arts.  Allow me to redistribute these various tomes, so that you may occupy the seat adjacent to my own.</p>', url: '
  http://300reviews.com/2009/12/23/14-your-conduct-and-aspect-on-public-transit/', tag: 'fiction'}, {title: '<i>The Passage</i>: A Review,
  of Sorts', excerpt: '<p>In the end it\'s kind of amusing to watch the promotional hoopla for <i>The Passage</i> 
  (not a result of the book\'s quality, of course, but rather Cronin\'s this-is-why-publishing-is-a-dying-industry 
  sky-high advance), and to picture the frenzied business team that\'s responsible for making a
  profit on the book saying, "You paid this guy HOW MUCH, NOW?"</p>', url: 'http://dislocate.umn.edu/writing/thepassage.html', tag: 'review'},
  {title: 'The Cover of Jonathan Franzen\'s Forthcoming Novel, <i>Freedom</i>', excerpt: '<p>"FREEDOM," she said.</p>
  <p>"A NOVEL," I said.</p><p>Etc.</p>', url: 'http://300reviews.com/2010/06/04/46-the-cover-of-jonathan-franzens-forthcoming-novel-freedom/', tag: 'humor'},
  {title: '<i>Reality Hunger: A Manifesto</i>', excerpt: '<p>Notable Claims: Novels are boring.  Memoir is boring.  
  Narrative is tedious. Fragmentation is interesting.  Disorientation is interesting.  Writing at the
  margins of a genre is interesting, "good."  Reality television is a gauntlet toward which writers of fiction 
  must respond.  Jessica Simpson typifies the new celebrity.</p>', url: 'http://another300reviews.wordpress.com/2010/01/28/1-reality-hunger-a-manifesto-by-david-shields', tag: 'review'},
  {title: 'Joshua', excerpt: '<p>Since 1953 the popularity of "Joshua" as a boy\'s name has increased exponentially; 
  by mathematical extrapolation, in the year 2547, 78.255% of the male population of the United States will be named "Joshua."</p>',
  url: 'http://300reviews.com/2009/11/25/5-joshua/', tag: 'essay'}, {title: 'Cee-Lo Green\'s "Fuck You!"', excerpt: '<p>The video for Cee-Lo 
  Green\'s new single, "Fuck You," makes me seriously lament that the last time I saw the girl I Ioved driving \'round 
  town with somebody else, I was only like, "My heart is broken, but I am sure my trust issues will be resolved in time."</p>',
  url: 'http://300reviews.com/2010/08/26/61-cee-lo-green%E2%80%99s-%E2%80%9Cfuck-you%E2%80%9D/', tag: 'SA'}]
Content.create(content_seeds)

