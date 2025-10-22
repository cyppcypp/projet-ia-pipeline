# Utiliser une image Python de base légère
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du projet (app.py et les données nécessaires)
COPY affichage/app.py .
COPY restaurants_export.csv . # Le jeu de données final
COPY Population_by_city.csv .

# Installer les dépendances
RUN pip install flask flask_cors pandas pymysql

# Exposer le port par défaut de Flask
EXPOSE 5000

# Commande pour démarrer l'application (l'API RESTful)
CMD ["python", "app.py"]