Documentation administrateur·ice
================================

Cette documentation présente l'installation du module Sterf-eBMS sur votre
instance GeoNature.

Le module a été développé avec GeoNature en version 2.15 et le module
`Monitoring`_ en version 1.0.3 et doit fonctionner avec ces versions minimales.

.. _Monitoring: https://github.com/PnX-SI/gn_module_monitoring

La dernière version du module est toujours disponible sur son `propre dépôt`_. Une
version récente est également mise à disposition sur le `dépôt commun`_ aux
configurations des suivis mais peut ne pas être la version la plus à jour
disponible.

.. _propre dépôt: https://github.com/Opie-insectes/sterf-ebms
.. _dépôt commun: https://github.com/PnX-SI/protocoles_suivi


Installation
------------

Téléchargez la dernière version du module sur la page des `releases`_ du module
et installez là dans votre dossier de modules de suivi. Ici on utilise
``~/modules`` comme dossier mais cela dépend de votre installation ; par exemple
la documentation du module Monitoring installe les modules directement dans le
dossier utilisateur.

.. _releases: TODO

.. code-block:: bash

   cd ~/modules
   curl -LO blabla
   mkdir sterf_ebms
   cd sterf_ebms
   tar xf ../sterf-ebms.tgz
   rm ../sterf-ebms.tgz

Ensuite on suit la `procédure d'installation d'un sous-module
<https://github.com/PnX-SI/gn_module_monitoring?tab=readme-ov-file#installation-dun-sous-module>`__
du module Monitoring :

.. code-block:: bash

   # On se rend dans le dossier des sous-modules.
   cd ~/geonature/backend/media/monitorings/
   # Création du lien symbolique vers notre module, adaptez le chemin si besoin.
   ln -s ~/modules/sterf_ebms .
   # Installation du module.
   source ~/geonature/backend/venv/bin/activate
   geonature monitorings install sterf_ebms

Vous devrez ensuite paramétrer les permissions de vos utilisateurs pour utiliser
le module, ou bien en attendant ajouter les permissions manquantes aux comptes
administrateurs :

.. code-block:: bash

   geonature permissions supergrant --group --nom "Grp_admin"
