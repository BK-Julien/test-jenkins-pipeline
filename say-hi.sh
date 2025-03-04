#!/bin/bash

# 1. Afficher un message de bienvenue avec la date et l'heure
echo "---------------------------------------------"
echo "Bonjour, $(whoami) ! 😊"
echo "Nous sommes le $(date '+%A %d %B %Y'), il est $(date '+%H:%M:%S')."
echo "---------------------------------------------"

# 2. Afficher l'uptime du système
echo "⏳ Temps écoulé depuis le dernier démarrage :"
uptime -p
echo "---------------------------------------------"

# 3. Afficher l'espace disque disponible
echo "💾 Espace disque disponible :"
df -h | grep "^/dev"
echo "---------------------------------------------"

# 4. Afficher l'adresse IP de la machine
echo "🌐 Adresse IP de votre machine :"
hostname -I | awk '{print $1}'
echo "---------------------------------------------"

# 5. Vérifier la connexion Internet (ping vers Google)
echo "🔍 Vérification de la connexion Internet..."
ping -c 2 8.8.8.8 > /dev/null && echo "✅ Connexion Internet OK !" || echo "❌ Pas d'accès Internet !"
echo "---------------------------------------------"

# 6. Dire au revoir
echo "👋 Passe une excellente journée, $(whoami) !"
