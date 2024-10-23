@echo off
setlocal

:: Ajouter tous les fichiers
git add *
if errorlevel 1 (
    echo Erreur lors de l'ajout des fichiers.
    exit /b 1
)

:: Commit avec un message
git commit -m "emjy"
if errorlevel 1 (
    echo Erreur lors du commit.
    exit /b 1
)

:: Tirer les dernières modifications
git pull
if errorlevel 1 (
    echo Erreur lors du pull.
    exit /b 1
)

:: Pousser les modifications
git push
if errorlevel 1 (
    echo Erreur lors du push.
    exit /b 1
)

echo Les commandes Git ont été exécutées avec succès.
endlocal
