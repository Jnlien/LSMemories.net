# LSMemories.net 

![Téléchargements](https://img.shields.io/github/downloads/Jnlien/LSMemories.net/total?label=Downloads&logo=github)

## Présentation

**LSMemories.net** est un gamemode développé pour [San Andreas Multiplayer (SA-MP)](https://www.sa-mp.com/). Ce dépôt contient une **sauvegarde intégrale** de l'état du gamemode tel qu'il était à son dernier usage sur le serveur **LSMemories.net**.
Le but de ce dépôt est de permettre une reprise, une amélioration ou simplement la consultation de ce projet.

---

## 📦 Contenu du dépôt

- Code source du gamemode (.pwn)
- Fichiers de configuration
- Structure de base de données vide (SQL)
- README (ce document)

---

## 🔧 État actuel

- ✅ Gamemode complet sauvegardé
- 🧠 **Aucune modification** n’a été effectuée après le backup initial
- 📂 Base de données incluse mais vide
- ⚠️ **Tous les paramètres serveur, configurations, et scripts sont à vérifier / reconfigurer avant une mise en production**

---

## ⚙️ Pré-requis

Avant de pouvoir lancer le gamemode, voici ce dont vous avez besoin :

- [SA-MP Server](https://www.sa-mp.com/download.php)
- [PAWN Compiler](https://github.com/Zeex/pawn)
- MySQL Server (ex. MariaDB ou MySQL 5.7+)
- Plugin SA-MP MySQL (ex. [BlueG MySQL plugin](https://github.com/pBlueG/SA-MP-MySQL))
- Un éditeur de code compatible (ex. [Sublime Text](https://www.sublimetext.com/), [VSCode](https://code.visualstudio.com/))

---

## 🚀 Lancement rapide

1. Cloner ce dépôt :
   ```bash
   git clone https://github.com/tonutilisateur/lsmemories.net.git
   ```
2. Importer la base de données SQL via phpMyAdmin ou ligne de commande :
   ```bash
   mysql -u root -p < lsmemories.sql
   ```
3. Configurer les accès à la base dans le gamemode (`.pwn`)
4. Compiler le gamemode :
   ```bash
   pawncc gamemode.pwn
   ```
5. Lancer le serveur SA-MP (`samp-server.exe`)

---

## 📌 À faire

- [ ] Configurer les accès MySQL
- [ ] Vérifier les plugins utilisés
- [ ] Adapter la configuration serveur (server.cfg)
- [ ] Nettoyage de scripts obsolètes
- [ ] Documentation technique des modules du gamemode
