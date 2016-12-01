---
layout: post
title:  "La revue de code bienveillante"
description: >
    Je pratique la revue de code depuis plusieurs années maintenant. Bizarrement, c'est toujours un exercice difficile. Qu'on la reçoive ou qu'on la donne, que ce soit en pair programming, en groupe ou par des revues de Pull requests, je pense que l'on doit faire preuve de bienveillance. 
---

Je pratique la revue de code depuis plusieurs années maintenant. Bizarrement, c'est toujours un exercice difficile. Qu'on la reçoive ou qu'on la donne, que ce soit en pair programming, en groupe ou par des revues de Pull requests, je pense que l'on doit faire preuve de *bienveillance*. 

Aujourd'hui je le pratique quotidiennement, toute modification du code est soumise à l'équipe par *Pull Request* et un certain nombre d'approbation (par des +1) est nécessaire avant de la fusionner dans la branche principale. 

## Ce que j'attends d'une revue

Pour moi, une revue de code à plusieurs objectifs qui sont à court, moyen et long terme, très bénéfiques.

Que l'on soit développeur depuis 10, 20, 5 ou 2 ans, **on fait toujours des erreurs** et l'on en fera toujours. Et pas forcement que des erreurs d'inattention, cela peut être des erreurs d'architecture, de conception, de nommage... et plus on les détectent tôt, plus le coût pour les réparer, pour rembourser la dette sera faible. Et puis, aucun développeur ne peut penser toujours à tout, c'est impossible. De plus, chacun à des compétences différentes et complémentaires. Faire de la revue de code permet de mettre à profit les différences et la complémentarité des développeurs. Certains connaissent les fonctions les plus performantes, certains font plus attention à la lisibilité du code. Ce serait dommage de ne pas profiter de cette expérience collective.

![Perles à repasser](/static/img/revue/perler.jpg)

J'ai un fils qui a 4 ans maintenant. Je fais souvent avec lui des perles à repasser. On choisit ensemble un modèle qu'il réalise ensuite seul en général. Souvent, il me demande si *"c'est bien comme ça papa ?"*, il est tellement concentré sur des détails que parfois il fait des erreurs d'inattention, c'est normal. C'est ce que l'on appelle trivialement *avoir la tête dans le guidon*. Mais un décalage d'une perle au début, c'est facile à détecter et à corriger, si on s'en rend compte à la fin, il faut parfois déplacer d'une case des dizaines de perles... et c'est long et pénible... une revue régulière peut l'éviter ! Et je pense que mon fils l'a compris.

De plus, je fais souvent mes petits modèles à côté (c'est mon côté "vieu geek" traumatisé du pixel art :) ) et mon fils m'observe. Un jour, j'ai pris une pince à épiler pour attraper les perles. Depuis, quand on commence, mon fils en veut une aussi, il s'en sert pour aller plus vite et être plus précis. En revoyant mon code, il a appris.

Et c'est vrai que l'on apprend énormément en lisant le code des autres et sans le savoir, on transmet, on partage des façons de faire en soumettant du code à la revue. 

Lors d'une expérience précèdente, j'ai réécrit une partie du framework Symfony dans un framework maison en l'adaptant à celui-ci (je n'expliquerai pas pourquoi...). En lisant, copiant, paraphrasant, comprenant, réécrivant, j'ai énormément appris. De nouvelles façons de tester, des utilisations de design pattern, des architectures auxquelles je n'avais pas pensées. Même si le travail pouvait sembler inutile et pénible, il a en réalité été très riche en enseignement. Mais à cette époque, je ne faisais pas relire mon code, un problème de culture je pense, et si je faisais une erreur d'inattention, on me *pointait du doigt*.

Lorsque l'on pratique quotidiennement des revues en équipe, en plus d'avoir moins d'erreurs, on commence progressivement à **partager la responsabilité des erreurs**. Comment blâmer un développeur ayant introduit un bug si la moitié de l'équipe a validé ce code ?  
Parce qu'il n'a pas écrit de test ? Pourquoi ne pas lui avoir dit avant de mettre un +1 ?  
Parce qu'il n'a pas pensé à tout ? Mais je n'y ai pas pensé non plus quand j'ai écrit *LGTM* (Looks good to me)...

Et progressivement, on ne parle plus de mon code, son code ou ton code, on parle uniquement du code. En réalité, **le code n'appartient à personne**, mais la responsabilité de sa maintenance appartient à tous. C'est notre responsabilité commune. Et le partager, le relire, le revoir, le réécrire nous amène à l'améliorer de façon continue.

## Ranger

Quand on a bien fait le ménage partout dans la maison et que mon fils commence à jouer dans sa chambre toute propre et toute rangée, il a tendance à se poser dans un coin, de jouer avec peu de jouets et de manière assez ordonnée. Je n'aime pas ça. J'ai envie de le voir s'éclater, mélanger les jeux, laisser libre court à son imagination, faire jouer la Pat patrouille avec Flash McQueen et construire une maison en Lego™ pour Barbie. En général, je me mets à jouer à côté de lui en mettant un peu de bordel et à chaque fois, il se lâche ensuite, il en met partout et je l'entends rire et crier de l'autre bout de la maison.

![Chambre de mon fils](/static/img/revue/chambre.jpg)

Une revue régulière et pertinente amène à améliorer la qualité du code produit, cela évite de vivre [la théorie  de la vitre brisée](https://fr.wikipedia.org/wiki/Hypoth%C3%A8se_de_la_vitre_bris%C3%A9e). C'est ce que j'applique dans la chambre de mon fils : je casse une vitre. 

C'est exactement l'inverse que je fais lorsque je revois du code : j'essaie d'éviter l'apparition d'un coin en bordel pour ne pas qu'il contamine le reste de l'application. Et une revue continue permet de les détecter au plus tôt.

## La revue fainéante

Les développeurs sont fainéants.

Ce n'est pas forcément un défaut, mais il faut le prendre en compte lorsque l'on soumet un développement au reste de l'équipe. Pour cela, j'essaie de m'appliquer plusieurs règles pour éviter ce que j'appelle le syndrome de la revue de code fainéante.

> Le nombre de commentaires sur une Pull Request est inversement proportionnel au nombre de lignes modifiées.

Tout d'abord, j'y applique, comme à mes classes, le *Single Responsibility Principle*. Une Pull Request ne doit changer qu'une seule chose et avoir une et une seule raison d'exister. On ne met pas dans une Pull Request un bugfix et une nouvelle fonctionnalité. Jongler entre ces deux sujets lors de la relecture nous empêche d'être efficace. Le sujet et la description de la Pull Request n'est autre que l'explication de cette responsabilité.

Ensuite, j'essaie toujours de faire des Pull Resquest les plus petites possible, pour cela, je diminue sa responsabilité au maximum. Je me souviendrai toujours d'une revue de code où je n'avais modifié qu'une seule ligne et sur laquelle j'ai eu 5 commentaires, alors qu'une Pull Request modifiant plus de 15 fichiers à côté avait reçu plusieurs +1 sans commentaires. Se concentrer sur peu de modifications permet d'être plus pertinent.

La dernière règle que je m'impose c'est de toujours soumettre un code qui peut être mis en production. Si on ne peut pas le déployer, si on casse quelque-chose, si ce n'est pas fini, je ne le soumets pas.

## Commenter

Une revue est là pour amener des commentaires, du débat. Je vois souvent des commentaires qui ne font pas avancer les choses, qui posent plus de problèmes qu'ils n'en résolvent.

Le point le plus important, c'est que **le commentaire doit concerner le fond et non la forme du code**. Arrêtez de faire des commentaires sur l'indentation, les sauts de lignes manquant en fin de fichiers, le code styling... C'est inutile et cela fait du *bruit* autour de la revue. Équipez-vous d'un outil qui vous fera ça de manière automatique et continue, bloquez les Pull Request tant que le code styling ne correspond pas à vos conventions, mais arrêtez de commenter pour ça... Et une fois que vous êtes équipé, s'il vous plait, ne paraphrasez pas le code sniffer... *"Scrutinizer n'est pas content parceque tu as oublié un espace"*... C'est inutile...

Ce que je m'attends à avoir comme commentaires, c'est vraiment sur le fond ! Le pattern utilisé est-il le bon ? Est-il bien implémenté ? Est-ce qu'une classe a trop de responsabilités ? Manque-t-il des tests ? C'est avec des commentaires comme ça que je vais vraiment pourvoir améliorer le code.

Dans ce que j'appelle la *bienveillance*, il y a un point fondamental pour moi : il faut parler de manière *impeccable*. Les commentaires concernent le code et nom le développeur qui l'a écrit. Il n'y a aucun sens à attaquer directement le développeur. Ce que l'on juge, c'est le code et non le développeur.

Pour cela, j'essaie de ne jamais dire "Tu devrais", "Ton code pourrait"... Je préfère utiliser le *on*. Après tout, le code appartient à tout le monde. "On devrait peut-être refactoriser cette partie", "On peut optimiser cette condition comme ça"... Je pense montrer comme ça que c'est un travail d'équipe et pas un *dev-bashing*.

![Dessins](/static/img/revue/dessins.jpg)

Je me souviens d'une histoire de la fille de ma voisine. Lorsqu'elle était en maternelle, sa maîtresse disait de tous ses dessins que c'étaient des *gribouillages*. Au début, sa mère arrivait tant bien que mal à la rassurer sur ses dessins, mais l'enfant avait été très touché, tellement que suite à un matraquage continuel de *"Tu ne sais pas dessiner, ce ne sont que des gribouillages"*, elle n'en a pas dessiné pendant plusieurs années. Tout ça parceque la maîtresse n'était pas bienveillante avec l'enfant et critiquait au lieu de proposer.

## Proposer

Je pense que chaque commentaire devrait proposer une alternative. Je dirais même que l'on devrait s'abstenir de faire un commentaire sur un code qui ne nous plait pas si on a pas une alternative à proposer.   
*"Ce nom de classe ne me plait pas"*, oui mais qu'est-ce que tu proposes ?  
*"On pourrait optimiser cette boucle"*, oui mais comment ?  

**Proposer plutôt que critiquer.** Cela marche superbement bien avec mon fils. 

Une fois, on est sorti se balader après une grosse averse, il y avait des flaques partout. Bien sûr mon fils s'amuse à sauter dedans, ce qui me pose quelques problèmes en tant que père. Tous les *"Ne saute pas dans les flaques !"* ont été sans effet... Jusqu'à ce que je prenne le problème à l'envers, que je propose *"Viens, on essaie d'éviter les flaques !?"*, succès immédiat ! Depuis le jeu, c'est d'arriver à ne jamais mettre un pied dans l'eau, il est heureux et je n'ai pas besoin de lui répéter 50 fois. Et puis surtout, lorsqu'il évite bien les flaques, je le félicite. C'est pour moi tout le sens des *+1* sur une Pull Request. Ce sont des félicitations. Crier et punir un enfant à un impact négatif sur son moral et les effets sont limités dans le temps. Proposer une alternative et féliciter est davantage positif et durable.

## Apprendre

Malgré tout, l'exercice de la revue de code met l'égo des développeurs à rude épreuve. C'est difficile, mais cela nous apprend progressivement à accepter nos erreurs et à apprendre de celles-ci. Il faut essayer de ne pas prendre les choses personnellement, après tout, **le code ne nous appartient pas**. Ce qui est doit être critiqué c'est le code et pas le développeur qui l'a écrit.

![Mousse au chocolat](/static/img/revue/mousse.jpg)

J'essaie toujours avec mon fils de lui faire apprendre de ses bêtises. Chacune de ses erreurs sont une opportunité d'apprentissage. Il m'aide d'ailleurs souvent à cuisiner. Dernièrement, j'ai fait de la mousse au chocolat avec lui, une mousse comme le faisait ma grand-mère. Exercice périlleux. À la fin, il faut verser la préparation dans de petits bols. S'il souhaite le faire, je le laisse faire, inutile ici d'attribuer les tâches, les enfants sont naturellement très volontaires. Et bien sûr, dès la première cuillère, il en a mis la moitié à côté ! En soit, rien de bien grave, mais il a fait un peu *la tête*. 

 - Papa, j'ai fait une bêtise
 - Pourquoi c'est une bêtise ?
 - Parce que j'en ai mis là
 - Ça me parait être une toute petite bêtise, comment on peut la réparer ?
 - Avec l'éponge !
 - Allez, va la chercher on nettoie ça tous les deux, ensuite on continue.

Une fois nettoyée, je lui demande comment on peut faire pour ne pas en mettre à côté cette fois. *"On prend une petite cuillère ?"*. Ok... pourquoi pas... ça a été un peu long, mais ça a marché. Il a appris de ses erreurs, il en connait les conséquences et sait les réparer. Puis il s'améliore pour ne pas la reproduire. Finalement, tout ce qui fait que l'on apprend et que l'on progresse.

## Justifier

Si l'on commente et que l'on propose une alternative, il faut aussi expliquer *pourquoi*, il ne suffit pas de dire *ce serait mieux comme ça*, il faut justifier, expliquer. Mais par une vraie explication, pas dire comme j'entends souvent : *"Parce que c'est une bonne pratique"*, pour moi, c'est l'excuse de ceux qui ne savent pas se justifier.

![Dumbo](/static/img/revue/dumbo.jpg)

Un soir, je lisais Dumbo à mon fils. Au moment de la scène où Dumbo doit sauter d'un immeuble en feu, mon fils me demande, innocemment :

 - Papa, pourquoi l'immeuble est en feu ?
 - Parce que les clowns veulent que Dumbo saute
 - Mais pourquoi ils veulent que Dumdo il saute ?
 - Pour qu'il tombe dans la petite piscine en bas
 - Mais pourquoi ?
 - Et bien, pour le spectacle, pour faire rire les spectateurs
 - Et ben moi, je trouve que c'est pas rigolo, j'aime pas les spectacles...

Peut-être que se moquer d'un animal est une bonne pratique chez les clowns depuis des générations ? Mais peut-être aussi que c'était dans un autre contexte et si l'on ne se demande pas pourquoi c'est une bonne pratique, pourquoi la remettre en question ? 

Les enfants demandent toujours pourquoi et ça, c'est une bonne pratique, cela développe l'esprit critique. Et il faut toujours répondre. Ne pas répondre serait lui inculquer qu'il y a des choses qu'il faut qu'il accepte sans poser de questions, sans comprendre. Ce serait lui apprendre à être dogmatique.

C'est comme dire qu'il faut faire d'une certaine façon parce que c'est écrit comme ça dans la documentation. C'est comme dire que dieu existe parce que c'est écrit dans la bible, ce n'est pas une justification valable et acceptable.

Comme si un enfant venait avec une documentation, des procédures qui t'expliquent comment t'en occuper correctement. Ce sont les parents qui viennent te voir en te disant *donne lui une sucette, tu verras, avec ça il va dormir* ou *quand il suce son pouce c'est qu'il a faim*... En fait, chaque enfant est différent et les recettes que l'on utilise ne marche pas avec tous. Cela dépend de sa personnalité, du cadre de vie ou du framework, du domaine, de vos valeurs. Il n'y a pas de bonnes pratiques, seulement des bonnes raisons de le faire de cette façon.

## Parler, écouter

Parfois, mon fils n'a pas envie d'aller à l'école. Est-ce qu'il est juste fainéant ou de mauvaise volonté ? Je ne pense pas. Quand cela arrive c'est souvent qu'il s'est passé quelque chose, alors je le questionne et surtout je l'écoute, **je l'écoute activement**. Je ne cherche pas à lui répondre tout de suite, j'essaie d'abord de comprendre. À cet âge, un enfant ne sait pas forcement exprimer clairement ses peurs, ses craintes, ses envies. C'est comme ça que j'ai découvert que Bruno à l'école lui disait tout le temps qu'il était *"un gros nul"*. J'ai tenté de le rassurer, de lui donner des alternatives, mais j'étais mal à l'aise avec la situation, j'en ai donc parlé à sa maîtresse avec qui on a trouvé une solution.

Lire une Pull Request, ça demande un gros effort de compréhension, il faut une lecture active et pas seulement survoler le code à la recherche de *"quelque chose à dire"*. Parfois même, si cela ne nous concerne pas, ou si l'on ne se sent pas compétent, il vaut mieux ne rien dire. Parfois, je me sens mal à l'aise avec du code, je ne sais pas forcément l'expliquer, c'est plus un ressenti. Dans ce cas, je ne pollue pas les commentaires avec un message qui pourrait être mal interprété ou mal compris. Je choisis souvent d'aller directement parler avec l'auteur. Se parler évite les mal-entendus, les quiproquos et rend les échanges plus riches et productifs.

## Faire de son mieux 

Même si on essaie de faire des Pull Request parfaites, des commentaires bienveillants qui proposent une alternative justifiée, on fait toujours des erreurs, mais l'important c'est de faire de son mieux. J'ai toujours dit que la meilleure façon d'apprendre à un enfant à dire *"s'il te plait"* et *"merci"*, c'est de commencer par lui dire soi-même, par **montrer l'exemple**. Les enfants ont toujours tendance à copier les adultes, autant en profiter pour lui transmettre *passivement* ses valeurs. D'ailleurs, pourquoi il y a autant de jeux d'imitation ?

Mais si un enfant copie beaucoup, il s'adapte aussi au contexte dans lequel il est. Quels parents n'ont jamais subi le *"Oh, mais avec moi il mange très bien"* ou encore *"Le coucher ? Super, une histoire et c'était réglé"*. Mon fils, chez ma mère, il dort énormément et est très calme, alors que chez ma belle-mère, c'est une pile électrique qui ne veut jamais se coucher et qui bouge en permanence. En fait, il s'est juste adapté à la personne qui le garde.

Créer un environnement bienveillant lors de la revue de code devrait contaminer progressivement le reste de l'équipe, par adaptation et par mimétisme, mais pour cela, il faut qu'il y ait des personnes qui montrent l'exemple et qui fassent de leur mieux. 
