Documentation utilisateur·ice
=============================

Cette documentation présente les fonctionnalités du module disponibles lors de
la saisie des données.


.. _terminologie:

Terminologie
------------

Il est important de noter que le module utilise la terminologie propre à
l'eBMS, qui diffère de la nomenclature historique du Sterf. Là où en « langage
Sterf » on parlait auparavant de *sites Sterf* composés d'un ou plusieurs
*transects*, dans l'eBMS on parle de *transects* composés d'une ou plusieurs
*sections*. Les concepts sont essentiellement similaires.

=========== ==========
Terme Sterf Terme eBMS
=========== ==========
Site        Transect
Transect    Section
=========== ==========

Ce module utilise exclusivement la notation eBMS. Il est donc possible que vous
vous retrouviez à vouloir enregistrer les données de ce que vous appeliez un
transect, il faut désormais utiliser le terme de section. Pour éviter la
confusion et faciliter la transition, les transects et sections sont
explicitement nommés « transects eBMS » et « section eBMS » dans le module. Dans
cette documentation, nous utiliserons toujours les termes de l'eBMS.


.. _geonature_characteristics:

Spécificités de GeoNature
-------------------------

Le module GeoNature apporte son lot de spécificités sur la façon de noter ses
données Sterf.

Il est courant de noter ses visites de transects en enregistrant la température,
le vent, bref toutes les données utiles de la visite à son début, puis de
parcourir les différentes sections pour faire ses observations. Dans GeoNature,
chaque section fait l'objet d'une visite *distincte*. Cela permet d'être plus
fin dans la saisie des informations sur ses sections, au prix parfois d'une
certaine redondance dans les informations saisies.

.. admonition:: Pourquoi cette différence

   GeoNature permet de définir deux niveaux de sites : les sites de bases et les
   groupes de sites. Les groupes de sites sont un simple regroupement de
   différents sites et les visites sont définies en rapport avec un site de base
   uniquement. Pour pouvoir coller à la définition à deux niveaux du Sterf et de
   l'eBMS, nous utilisons ces deux mêmes niveaux, mais celà a pour conséquence
   d'avoir à définir les informations d'une visite au niveau de chaque section
   plutôt qu'au niveau plus général du transect.


.. _enter_my_data:

Saisir ses données
------------------

Accéder au module
^^^^^^^^^^^^^^^^^

Transects
^^^^^^^^^

Sections
^^^^^^^^

Visites
^^^^^^^^

Observations
^^^^^^^^^^^^
