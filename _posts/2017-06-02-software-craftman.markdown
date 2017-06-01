---
layout: post
title:  "Software craftsman"
description: >
  In my family, we are craftsman from father to son..
  My father was a mason craftsman, my grandfather was a software craftsman builder, and I am a... Software craftsman.
  I have renoved roofs, facedes and others, today I realize that my father and grandfather's job is not so far from mine.
  I will tell you why anecdotes about the everyday's life of developers and craftsmen.
---


## Foreword

This article is a transcription of the talk that I gave during the New Crafts conferences of Paris on May 18, 2017. To follow better, I advise you to look in parallel at the [slides of the talk](http://en.slideshare.net/gbprod/artisan-developpeur-61978632).

## About me

My name is Gilles Roustan and I am a software craftsman.
In this article, I will talk about myself, my job and my family.

Especially the evolution of the perception of my profession and how the job of my father and my grandfather helped me become a happier developer.

## The fashion of software craftsmanship

Some time ago, I moved to a new job and when I made my resume, I put that I was a **software craftsman**.

Afew years ago, I saw this *fashion* appear in conferences and in articles on Software Craftsmanship.

I thought that the title was really cool: software craftsman !
A contrast between modern and traditional, between manual and intellectual.
And, like a sheep, I found it cool and I rushed to modify my twitter profile.

I found it so cool because I came from a family of craftsmen: my father and my grandfather were builder craftsmen, my great-grandfather a plasterer...

One day a friend looked at my twitter account. And of course, he asked me why I had put this title, what was the relationship between my job and craftsmen? Between a bricklayer, an electrician, a roofer and me?

I could not answer. The reality is that at the time, I had not understood the meaning of this title ...

## Introspection

When I was young, every summer I worked with my father on construction sites.
Facade, roofing, tiling ... I did a bit of everything.

For example, I worked on the facade of the Impériator Hotel in Nîmes.

So I began to look for the links, the correlations, the resemblance that can exist between me, a developer, and the craftsman who repair my roof.

One day, visiting my grandfather, I found this document.

![The know-how... in addition...](/static/img/artisan/savoir-faire.jpg)

It was an old document he used to give each time he was asked for his references or his qualifications.
How did he present this? Photos of construction sites, explaining what he did!
I just love it. Why do I love it? Because we should all do this! Especially us, developers.

This is really important to me: the know-how.

Showing our know-how rather than our diplomas, that's interesting! Your Github account is a really strong point on your resume! Make open-source, show your work, make a website and write articles (not only technical articles !). Your strong point is not your training, it's your know-how, so I think we should show it!

In fact, this document is the Github account of my grandfather.

![Github Account](/static/img/artisan/chantier-1.jpg)
![Github Account](/static/img/artisan/chantier-2.jpg)

## Know-how

I often say that if a young man goes faster, an old man knows the road.
In computers science they call it experience, I prefer to talk about know-how.
The reality is that you don't learn how to write good code at school, you learn to code in the field.

At school we learn some bases of development, simple notions of algorithmic, and we don't see how to manage a website with a traffic of millions of visitors per month, we don't see how to refactor a project coded without tests and without documentation, we don't see the basic principles of *"modern"* programming as [dependency injection] (http://putaindecode.io/fr/articles/php/injection-dependances), [Clean code] (Https://cleancoders.com/episode/clean-code-episode-1/show) or the [SOLID](http://williamdurand.fr/2013/07/30/from-stupid-to-solid-code/) principles (in my case, I have never seen it... and I hope we talk about it now!).

How does this happen among craftsmen?
We do not really talk about training or studies, we talk about apprenticeship, the difference is that we learn by doing.

You can explain for hours how to build a wall or how to lay tiles, but, as long as you haven't done it, you do not know how to do it!
What is the best way to learn how to make a website, a mobile app?
Well, it's by doing it, by making mistakes, by doing it again, and that is where we will acquire the know-how.
And, even better, do it with someone who knows how to do it, a person to show you, explain to you, make you learn from your mistakes.

## About dry stones

I'll talk to you a bit about my grandfather.
My grandfather is a specialist, an expert as they say, of dry stone.
He built various works: walls, staircases, stone houses, norias...
I tried it last summer and asked him to teach me how to build a simple wall with dry stones.

![Dry stone wall](/static/img/artisan/mur.jpg)

During this apprenticeship, I was impressed by one thing in particular: when my grandfather works, everything seems simple.

He looks at his wall, he takes a stone, it almost seems that he takes it at random, he places it, wedges it, tests it. From the first to the last stone, each stone seems simple to place.

While for me... the first stones, there's ok... But as soon as the wall starts to rise, it becomes more and more complicated... and more and more unsteady...

My grandfather looked at my wall and explained that, if it was harder and harder, it was because I had not respected some good building practices: I hadn't put *bondstones*, I made *saber blows* and I put a *"damasse"*, a *stack of plates*...

To me, it made me think of something else: his *bondstone*, it is like our *Factory*, his *damasse* it is like our *Singleton*...
In fact, there are design patterns in the construction of a wall! And they must be used to build a solid wall.

![Design patterns](/static/img/artisan/design-pattern.jpg)

When I put the *damasse*, I felt like I was saving a lot of time.
But once I started putting stones on it, it began to be complicated, I had trouble stabilizing them because the *damasse* did not give me a solid foundation.
I finally removed it... and therefore had to remove all the stones from above. In fact, I had bad code in my wall that annoyed me and prevented me from progressing properly. So, I refactored my wall.

If for my grandfather the last stone is so easy to place, it is because he has taken care of his work from the beginning. He respected the patterns of construction from the beginning.

Even the stones placed inside, which are not seen, were placed with care, as they are as important as those you can see. My grandfather's attention to every detail is really impressive.

## About simplicity

I recently worked on a project of synchronization between a database and a rest API.
The project manager claimed me that there was nothing to do, that it would "just" take 2 days the most... A project manager... Of course all that in .Net, a technology that I badly mastered, on an unknown database and of course not very clean, with no integrity constraints, duplicated data...

In short, a big mess...

5 days later, I deliver the project finished and functional. I showed the code to the project manager. His reaction really surprised me: he said to me *"You see, it was simple, your code is so simple, there was not much to do in the end".

I said *"Thank you"*.

Because I thought about my grandfather, if my code looks simple, it's because there's a lot of work behind it.
It's the developer's know-how that makes things simple!

This project was transferred to a trainee. He was asked to add logs.
And strangely the project has became complex. For logs? Why?

When adding a log, here is the code that he added each time:

{% highlight csharp %}
if (Configuration.LOG_LEVEL == "prod") {
   this.logger.logSimple("...");
}
if (Configuration.LOG_LEVEL == "dev") {
    this.logger.logSimple("..."));
    this.logger.logFull("...");
}
{% endhighlight %}

And that, several times per class and even several times by function!

Why does it smell?
Because he did not respect the patterns?
Maybe because he did not have a mentor?
Maybe he hadn't learn how to do it?
Perhaps hadn't yet failed doing it?

*Simplicity is the consequence of a well-built architecture.*

When I work on the improvement of a class, of a project, I often think about this quote of Saint-Exupéry: * "Perfection is achieved, not when there is nothing more to add but when there is nothing left to withdraw."*
I try to keep that in mind. If a function or a class seems complex to me, I always wonder: what can I remove?

I often say that the code *seems complex to me*. In the code, many things are about feelings. In my opinion, the best indicator of badly written code are my guts.
I feel that a code is badly written, that's why in Clean code we talk about [code smells](https://blog.codinghorror.com/code-smells/), code smells. If I see a singleton, it stinks, I feel something is wrong, like when my grandfather sees a *saber blow*.

![Blow of saber](/static/img/artisan/coup-de-sabre.jpg)

## About effort

During my various summers spent on construction sites with my father, I installed several elevators.
I remember the first one I worked on.

8 floors... and without an elevator of course! It was necessary to demolish a part of the stairs so that the elevator could pass in the middle. I was young, and a little stupid. My father demolished the stairs on the top floor and I took down the buckets of rubbish... I go up, I fill, I go down, I empty, I go up, I fill ....

After a while, my father began to ask me for a shovel, so I went down and brought up a shovel, then a hammer... and so on...

My father quickly stopped me and used his favorite expression: *"He who has no head, has good legs"*.
I did not think, I was making empty trips, and I did not optimize them. *"Bring all the tools in one go instead of bringing them one by one, and do not run, it makes no sense, optimize your time and your efforts. It's a marathon, not a sprint."*" Today, I hear that from my scrum master.

The developer who added the logs has very good legs. Since he did not think, he gives himself more work. In reality, a good developer, like a good mason, is lazy!

In fact, my father demolished the top of the stairs to be able to fix a pulley, which then simplified the work for me.

## About cleaning

There was one thing that annoyed me when I worked with my father, and that I did not understand at that time. This is my father's obsession with cleanliness.
Every day, at the end of the day, we spent 20 minutes together cleaning the site. And 20 minutes for 5 or 6 people on an 8-hour day is a lot.

My father said: "A good craftsman leaves the site cleaner than when he arrived."

(If you think you've never had a good mason, it's surely true. A good mason is like a good developer, it's rare)

![Dirty construction site](/static/img/artisan/chantier-sale.jpg)

Working in a clean environment is nice.
Working in an environment where everything is in its place is pleasant.
It’s less of a mess and we can go faster.

Especially in masonry, there is a lot of concrete and mortar. Cleaning cement fallen on the floor the day it was done is easy. Two days later, it's troublesome. So a week later... it's really annoying. When it is not the customer who has to do it!

I realized quickly that it saves time.
Cleaning up a site, like cleaning the code is part of the craftsman's life. There is nothing worse than dead or badly written code in an application. It pollutes the code, it makes it complex, and cleaning it becomes more and more difficult with time.

## About time

One thing I hate as a developer is that someone comes to ask me : *"How much time do you need to implement this feature?"*.
I really hate to answer that question. Because if there is one thing that my experience has taught me it's that it is impossible to acurrately estimate a development of more than 2h.
This is Hofstadter's law:

*"It always takes longer than expected, even taking account Hofstadter's law."*

I always thought it was something specific to my job. I talked about it with my father with conviction, but he quickly put me straight. For me, when a mason makes a cost estimation, there is a large amount of materials and labor time is easy to estimate.

When I told him that, he answered with a smile: *"You know Gilles, most of the time the materials are 20% of an estimation, the rest is labor. The labor, in general, I do it with the wet finger... and I multiply by 2"*

Just like me...

*"Sometimes I'm wrong, sometimes to my advantage and sometimes not... It's the most difficult. The problem is that there are so many external elements that you can never foresee everything. And then, we never do the same thing twice, so it's hard to establish rules. "*

## Unforeseen things

I remembered a job that I participated in a long time ago, and I remember it because it was particularly difficult.

It was in the basement of a building, the purpose was to change the boiler. In this room there was a kind of concrete support used for the old boiler. As the new one was bigger, the support had to be broken. My father had planned 1 day with 2 people (and had billed 2 days at 2).

I was with Ludo to do that. Ludo, he's Breton, with a strong accent, I did not understand anything that he said. We arrived, calm, with our electric hammer drills and we began to destroy this block.

After an hour, we found something hard, very hard. Those who had built this block had put large stones in it.

So, we felt stupid with our little electric hammers. Not powerful enough.
We called my father and decided to go and get the big compressed air hammer. We took the truck, got the compressor and the hammer, we installed it. We started to work a bit but it was already the end of the first day. We uninstalled it, we cleaned it and the day was over. We had not done a quarter of the work.

Finally, we spent 3 days on this concrete block.

In fact, we were in front of a poorly built block, a legacy. We could not foresee what we were going to find in it.

Besides, I never heard my father ask his employees to commit a *deadline*.

## Hastily

I live this kind of situation very often as a developer, and there is something that always astonishes me; when we face an unforeseen event that can make us lose a lot of time, there is always someone to tell developers:

*"Find us a quick solution, do a trick, you don't have a faster solution?"*.

It's funny, because I can't imagine myself saying this to a craftsman:

*"It's too complicated to do the foundations, just skip it."*
*"Look, it doesn't matter if the window don't close, push it in production anyway"*
*"Drop the fuses, I think already electrician company manages overvoltages"*

Overall, would you let a craftsman work without testing his work?

With my father, I was involved in the construction of walls and roofs. You know how you build a wall? 
Laying the bricks is fast, what takes time, and the real work is the test of the laying. The mason's plumb line is our unit tests. Each brick of the wall is tested independently, unit by unit and also between each of them. When we build a roof, we throw water on it to ensure there is no leak.

We even test before we start working. When my grandfather starts a wall, he always sets a line. It allows to constantly check that each stone of the wall is aligned. We do Test Driven Development somehow.

It does not prevent the bugs, it limits them. A storm and the tiles fly away, the gutters crack. My father spends a lot of time fixing these kinds of bugs. It is also very exhausting because it takes more time in transport and finding the problem than to actually repair it.

I often say that 80% of fixing a bug is to finding it, for my father it's the same... first there is transport, then find the tile that leaks, and finally repairing it's quick.

Besides, it's funny how increasing the load of a house can cause bugs. Such as using a house for something it was not made for, such as a storm, an earthquake or a flood.
A bit like when you maintain an e-commerce site and you're quoted in [a big TV show](http://1001pharmacies.github.io/general/effet-capital).

## About tools

My grandfather builds dry-stone walls in a reinsertion association. He’s over 80 and he has to be really passionate to do this. He told me an anecdote. Once, he had to put a *"key"*, an important stone pattern, but the chosen stone was more than 100kg. Which was perfect, because the weight would bring better stability.

My grandfather said to the youngsters: *"Well, we'll put that stone there"*. Immediately, the youngsters began to say: *"No, but it's too heavy, it's not possible, we're going to hurt ourselves, it's late... we don't have enough time"*. There were looking for a reason not to do it.
My grandfather let them go. He moved the scaffolding closer, placed pulleys, it's called a *rolling bridge*, and began to wedge ropes under the stone. And he put it up, alone, and he put it down. I do not know how he does it, but he used his know-how and all his laziness to, at more than 80 years old, place this stone on the wall.

![Rolling bridge](/static/img/artisan/pont-roulant.jpg)

It reminds me of the time when I was working on an import followed by a lot of processing ; first on a small file, the import script did it without any problem, the problem is that the real file made millions of lines, and there the server could no longer handle the load and the processing would have taken several days!

How to do it? Cut the file and run 50 imports instead of one? No, the team was too lazy for that. I preferred to use a *rolling bridge*, we used a [RabbitMq](https://www.rabbitmq.com/) and processed the file using a queue for asynchronous and parallelized processing.
Finally, the treatment took only a few hours.

I am impressed by the number of tools that a craftsman can use, my grandfather collects them, he wanders to and fro the flea markets to find tools that are always older and sometimes odd.

When I enter his workshop, I feel like I'm using `npm`,` composer`, `apt-get`,` gem` or `pip`. Tools of all kinds, for more or less specific uses, in different contexts. A sort of curved shovel to mix the mortar, hammers of all sizes ...

![Tools](/static/img/artisan/outils.jpg)

By the way, when I worked on the dry-stones wall, he gave me a hammer with a long handle and a convex end. Why would a conventional hammer not be enough? Because it avoids bending to break the stones and the convex end allows to break the stones more precisely.

My grandfather always says *"a bad worker always complains about his tools."*
In fact, every tool has its usefulness, advantages, disadvantages and it is up to the craftsman to choose the right tool at the right time.

He also has a definition of tools that I really like: *"a tool is an object that modifies the material"*, developers' tools are `php`,` java`, `python`,` ruby ` or ` javascript` and our material is the data we're manipulating.

## Fondations

I was also involved in another project that affected me a lot, a particularly difficult work because it was changing the whole structure of the building.

It was an old building of 5 floors in the middle of the city. The owners wanted to put an underground car park there. To do this, it was necessary to enlarge the basement and to move a bearing pillar. I don't know if you imagine the how difficult this work was!

At the time of the call for tender, nobody wanted to do it. Too dangerous, too complex and risky. My father finally agreed to do it. During this work, I remember 2 things: how stressed he was and the state of transition of the basement.

While we were breaking the bearing pillar, we had to compensate by putting up supports and there were so many that we could barely move. 

We had to squeeze between the supports to break this pillar. Yes, redesigning the structure of a building is complicated. It's like changing a whole layer of an application, the basic structure, moving from a desktop UI to a web UI, switching from an SQL database to NoSQL, it's hard.

![Supports](/static/img/artisan/etais.jpg)

I've moved several PHP applications from a homemade framework to Symfony. I was stressed when the first queries no longer passed through the legacy code but by the Symfony's Kernel. It was the same stress as when I removed the supports in this basement, each of them one by one.

It is like working on an application with a part of the code that no developer dares touch because it is too complex, badly written, and where any modification can have serious consequences. It's scary.

This is for me the definition of Legacy code: *it's code that we are afraid to modify* 

## Software craftsmanship manifesto

All these stories to go where? To the software craftsmanship manifesto
It is a manifesto signed by professionals like Kent Beck or Robert Martin that comes as a complement to the agile manifesto:

**Not only working software, but also well-crafted software**  
With tests, a plumb line, a laser, with the right tools.

**Not only responding to change, but also steadily adding value**  
Like when you add an underground car park or an elevator.

**Not only individuals and interactions, but also a community of professionals**  
Like my grandfather and his association of dry stone builders.

**Not only customer collaboration, but also productive partnerships**  

What we have to remember is that, beyond being developers, we are above all professionals and that if we are professionals, it is that we have know-how.

Since you would not accept that your builder repairs your roof without checking it is leaking,
as you would not accept that your electrician entrusts your installation to a trainee, the creation of an application, which will eventually become a daily tool, which will save time, money, which is sometimes the strategy of an entire company, must be entrusted to professionals. So, just be professional.