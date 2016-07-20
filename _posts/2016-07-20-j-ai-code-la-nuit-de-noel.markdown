---
layout: post
title:  "J'ai codé la nuit de noël"
description: >
  Ce soir, on est le 24 décembre 2014, et j'ai codé toute la nuit.
---

## Avant propos 

Il y a des articles que l'on écrit pour que l'histoire sorte de notre tête, cet article en fait partie, c'est un article pour oublier. 

## Contexte

Ce soir, on est le 24 décembre 2014, et j'ai codé toute la nuit.   

Il est 21h.  
Je viens de coucher mon fils de 2 ans en lui racontant de belles histoires de Noël.  
Sa mère n'est pas là.  
Elle est dans le coma depuis maintenant 3 mois suite à une maladie qui restera inconnue.

Ce soir, j'ai besoin d'oublier, de vider ma tête de ces images du quotidien.  
Ces images de perfusions, d'EEG et d'ECG...

Souvent, dans ce but, je code.

Cela peut paraître étrange, mais coder m'aide beaucoup ces derniers temps. C'est de cela dont je vais essayer de vous parler dans cet article.

## Un projet

J'ai ressorti du placard un vieux projet récurent, le genre de projet que l'on commence 15 fois et que l'on ne finit jamais. C'est un jeu de rôle en ligne dans un univers du farwest. Il a été initialement créé par un de mes meilleurs amis qui crée aujourd'hui des jeux de sociétés. Il est génial. Il m'aide aussi beaucoup ces derniers mois.

Ce soir, je suis parti pour coder le système de duel, il n'est pas simple. Lors de la première version de ce jeu, des mathématiciens avait fait des études statistiques pour équilibrer le jeu et avaient fourni des formules de calculs précises et complexes.

C'est génial, j'adore avoir des règles claires et précises. De plus, cela se prête vraiment bien au TDD et je sais que ça m'occupera l'esprit, que ça prendra toute la place dans ma tête, que cela ne laissera pas de place au reste, à ma femme, à mon fils, aux docteurs. Surtout ce soir, où je n'arrive pas à dormir, où je n'ai pas envie de dormir.

## Pomodoro 

Quand je peux et que j'ai des problèmes de ce type à résoudre, j'utilise une technique qui devrait être mieux connue des développeurs : le Pomodoro.  
Le Pomodoro est une technique de développement itératif. C'est surtout, pour moi, une technique de concentration.  
Le principe est très simple : 

 1. Je prends 4 minutes pour planifier ce que je vais faire dans le prochain cycle
 2. Je code, développe ou design pendant 24 minutes précisément
 3. Je prends 1 minute pour résumer ce que je viens de faire
 4. Je recommence

Toutes les 4 itérations, je fais une pause plus longue de 25 minutes.  
Tout est timeboxé et chronométré de manière très précise. Ça commence quand ça commence et ça s'arrête quand c'est fini, pas une seconde de plus, pas une seconde de moins.

Je sais que je vais travailler sur le système de duel, ne sachant pas vraiment comment je vais faire ça, je décide de consacrer ma première itération à designer l'architecture de mon code.

## Design

*Tic tac tic tac...*  
Le premier pomodoro démarre, comme souvent, je mets mon casque, ce casque qui me couvre bien les oreilles.  
Pas pour écouter de la musique, seulement pour m'isoler, créer une barrière virtuelle avec le monde extérieur. Cela accroît ma concentration et me permet d'ignorer les discussions autour de moi sans que ce soit mal pris... et oui, comme je suis censé avoir de la musique dans les oreilles, je ne suis pas censé entendre les bruits de couloir, je peux donc rester concentrer sur ce que je fais. 

Ce soir, je n'ai pas grand-chose à ignorer mais le silence de ma maison m'étouffe. Il manque quelqu'un, ici, ce soir.

Non, il ne faut pas que je me laisse perturber.

Qu'est-ce que j'ai prévu de faire ?

Ah oui, le design des classes servant pour la gestion des duels.

Quand je design, j'utilise des outils très très évolués comme du type papier une ardoise ou un tableau blanc... Je suis équipé, j'ai la petite ardoise Velleda de mon fils.  
Lorsque je design mes classes, je me pose toujours cette question simple : *"Que fait cette classe ?"*  

Si la réponse à cette question contient un **"et"**, c'est que cette classe fait trop de choses. Par exemple, si je prévois que ma classe va gérer un duel et le calcul des dégâts, c'est qu'il y a au moins deux classes.  

On a trop tendance à donner trop de responsabilités aux classes, leur faire faire trop de choses. En ne laissant qu'une seule responsabilité à chaque classe, on simplifie le code, il devient alors simple, plus facile à lire, à maintenir et à faire évoluer.
...

Il faut d'ailleurs faire la même chose, à mon avis, au niveau d'une application, ou même d'une entreprise.

Une fois écrite, les méthodes privées sont souvent un bon indicateur d'une classe qui a trop de responsabilités, chaque méthode privée peut devenir une dépendance, tout est ensuite une question de dosage entre l'étendue de la responsabilité de la classe et le nombre de dépendances de celle-ci.  

C'est le [Single Responsibility Principle](https://en.wikipedia.org/wiki/Single_responsibility_principle). Finalement, respecter ce principe revient presque à faire de la programmation fonctionnelle.

**Ding !** La fin de la première itération viens de sonner, je n'ai pas vu le temps passer.  

J'essaie de sortir un peu la tête de mon design et des quelques squelettes de classes que j'ai commencé à écrire.  
J'ai dans ma tête la carte des classes, des dépendances et des points un peu tricky de mon application, je vais pouvoir coder.

## TDD

Pour cette seconde itération, je vais implémenter la classe principale, je connais les dépendances, sa responsabilité, je vais pouvoir faire du TDD. Pendant la pause, je m'interdis de toucher le clavier, ce temps est dédié à  la réflexion et à la planification.

Mes cowboys vont pouvoir commencer à se défier.

Le TDD, c'est un peu du pomodoro à l'échelle d'une classe, comme le pomodoro est un sprint scrum à l'échelle d'une après-midi.  
L'écriture du test, c'est de la planification, l'écriture du code, c'est l'implémentation, le refactoring, c'est la rétrospective.  

Je me rends compte aussi que les médecins font pareil.  
Il analyse les données des prélèvements de ma femme, ils testent une nouvelle médication, ils analysent les résultats, puis ils recommencent tant qu'ils échouent. Aujourd'hui ils ont encore échoué. 

Si le TDD est pour moi la meilleure façon d'écrire du code, c'est qu'elle est infaillible. Elle fait systématiquement apparaître les problèmes de design.

Si la classe a trop de dépendances : c'est chiant d'écrire les tests.  
Si la classe a trop de responsabilités : c'est chiant d'écrire les tests.  
Si la classe n'est pas assez ouverte ou pas assez fermée : c'est chiant d'écrire les tests.   

Et j'adore ça.  
J'adore me prendre dans la gueule : Merde, je sais écrire le code, mais je sais pas le tester. Ce n'est que rarement à cause des tests ou du framework de tests, c'est à cause du code et de son design. 
Même si je code depuis plus de 15 ans, je fais encore des erreurs de design, est-ce que ça fait de moi un mauvais développeur ? un imposteur ?   

**Ding !** 

## Redémarrer

J'ai déjà fait plusieurs itérations et l'alarme de fin de pomodoro sonne en pendant la rédaction d'un test, j'arrête en plein milieu, tant mieux.

Mes cowboys se tirent dessus, c'est fun.

C'est l'heure de ma longue pause.

Je sors boire un verre de rhum. L'alcool débride l'écriture du code et aide parfois aussi à oublier.  
Qu'est-ce que je fais déjà ?  
Je code depuis plus de 2 heures. Demain c'est Noël.

Merde, les cadeaux, j'ai oublié de les poser au pied du sapin !

Qu'on dit les médecins aujourd'hui... oui... ils parlaient de dernière chance... oui... c'est pour ça que je code.  
Demain, je sais que ce sera le premier jour en trois mois où je n'irai pas voir ma femme dormir à l'hôpital.  
Je commence à oublier mon code.

**Ding !** 

Bon, j'en étais où ?  
Oui, le test à moitié écrit.

J'aime laisser du travail en cours lors que je pars en pause, c'est plus facile de reprendre le travail ensuite, la carte mentale que je me construis dans ma tête est plus facile à reconstruire. J'essaie aussi souvent de rentrer chez moi avec un travail en cours ou un problème complexe à résoudre.

Combien de fois j'ai entendu un développeur dire "J'ai trouvé la solution sous la douche ce matin !" ?  
Je pense que le cerveau doit compiler les données du problème le soir, faire une rétrospective et le matin, au moment où j'ai le moins de choses à penser, où mon cerveau est le plus libre et reposer, la solution apparaît souvent d'elle-même. Ce moment, c'est sous la douche du matin.  
Partez avec un problème et prenez une douche le matin, j'ai résolus des centaines de problèmes comme ça.  

## Perturbations

 -  *"PAPA !"*

Mon fils s'est réveillé. Il faut que j'aille voir ce qu'il a. Je ne sais pas si je suis un bon père, mais élever un enfant seul, c'est difficile.

 - *"Papa, est-ce que le papa Noël est passé ?"*
 - *"Attends, je vais voir... pas encore mon chéri, mais tu sais, il faut que tu dormes pour qu'il passe"*

Cette interruption n'a durée que trois ou quatre minutes, mais elle m'a sortie de cet état de transe que provoque le code.  
Toute cette carte mentale que j'avais en tête a disparue, il va falloir que je la reconstruise.  
Ça prend du temps et ce n'est pas facile et souvent, j'oublie des choses au passage.  
Et face à mon fils, mon casque sur les oreilles est inutile.

J'ai quotidiennement ce problème dans mon métier, je suis sûr que vous connaissez ça.  
Cette personne qui vient vous voir en disant : 

 - *"Gilles, je peux te déranger 5 minutes ?"*

En réalité, juste en posant cette question, elle vient déjà de me déranger 20 minutes alors que je ne lui ai pas répondu.

S'il vous plaît, respecter l'état de concentration, de *"transe"* des développeurs.   
S'il code, utilisez un canal asynchrone pour avoir son attention : slack, email, chat...  
N'attendez pas une réponse immédiate, laissez le revenir vers vous.  

**Ding !**

## Fin

Il est deux heures du matin.  
Je n'ai pas fini, je ne suis pas complètement content de ce que j'ai fait, sûrement l'effet de l'alcool, mais ce n'est pas grave.  
C'est là, c'est testé, je pourrai le faire évoluer un autre jour.  
Épuisé, l'esprit vidé, je vais me coucher.  

Demain, pour mon fils, je devrais être heureux.

## Épilogue

Je ne sais plus où est le code écrit cette nuit là, sûrement passé à la trappe lors d'un formattage hâtif de ma machine, mais qu'importe... ce n'est pas important.

Ma femme se réveillera quelques semaines plus tard. Une nouvelle vie commencera, mais ceci est une autre histoire.