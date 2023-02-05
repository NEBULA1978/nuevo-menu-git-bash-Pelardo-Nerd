#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar fecha y hora"
    echo "4. Salir"
    echo "5. Ver el estado de Git"
    echo "6. Añadir cambios de varios archivos a Git para crear un commit después"
    echo "7. Eliminar archivo .gitignore"
    echo "8. Crear un commit cada vez que se añade un cambio en algún archivo"
    echo "9. Ver los cambios en el archivo con git diff"
    echo "10. Ver los commits con git log"
    echo "11. Subir el código clonado a GitHub con git push origin master"
    echo "12. Descargar la última versión del código de GitHub con git pull origin master"
    echo "13. Clonar un proyecto de GitHub con git clone nombrerepo"
    echo "14. Crear una rama con git branch nuevafeature"
    echo "15. Cambiar de master a una rama con git checkout nuevafeature"
    echo "16. Ver todas las ramas con git branch"
    echo "17. Subir una rama a un repositorio de GitHub con git push -u origin nuevafeature"
    echo "18. Ver todas las ramas con git branch -a"
    echo "19. Cambiar de una rama nuevafeature a master con git checkout master"
    echo "20. Eliminar una rama del repositorio externo con git push --delete nuevafeature"
    echo "21. Eliminar una rama de mi PC de forma local con git branch -d nuevafeature"
    echo "22. Modificar el nombre del commit con git commit --amend"
    echo "23. Archivos modificados en cada commit con  git log --stat"
    echo "24. Ver los commits: el hash la fecha y el autor"
    echo "25. Cambiar de commit"
    echo "26. Volver al último commit"
    echo "27. Ingresa el nombre del archivo a añadir:"


    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Verificando el estado de Git"
        git status
        read foo
        ;;
    6)
        echo "Añadiendo cambios de varios archivos a Git para crear un commit después git add -A"
        git add .
        read foo
        ;;
    7)
        echo "Eliminando archivo .gitignore"
        rm .gitignore
        read foo
        ;;
    8)
        echo "Creando un commit cada vez que se añade un cambio en algún archivo"
        echo -n "Introduce el nombre del commit a crear: "
        read repo_commit
        git clone repo_commit
        read foo
        ;;
    9)
        echo "Verificando los cambios en el archivo con git diff"
        git diff
        read foo
        ;;
    10)
        echo "Verificando los commits con git log"
        git log
        read foo
        ;;
    11)
        echo "Subiendo el código clonado a GitHub con git push origin master"
        git push origin master
        read foo
        ;;
    12)
        echo "Descargando la última versión del código de GitHub con git pull origin master"
        git pull origin master
        read foo
        ;;
    13)
        echo "Clonando un proyecto de GitHub con git clone nombrerepo"
        echo -n "Introduce el nombre del repositorio: "
        read repo_name
        git clone repo_name
        read foo
        ;;
    14)
        echo "Creando una rama con git branch nuevafeature"
        echo -n "Introduce el nombre de la nueva rama: "
        read branch_name
        git branch branch_name
        read foo
        ;;
    15)
        echo "Cambiando de master a una rama con git checkout nuevafeature"
        echo -n "Introduce el nombre de la rama a la que se quiere cambiar: "
        read branch_name
        git checkout branch_name
        read foo
        ;;
    16)
        echo "Verificando todas las ramas con git branch"
        git branch
        read foo
        ;;
    17)
        echo "Subiendo una rama a un repositorio de GitHub con git push -u origin nuevafeature"
        echo -n "Introduce el nombre de la rama a subir: "
        read branch_name
        git push -u origin branch_name
        read foo
        ;;
    18)
        echo "Verificando todas las ramas con git branch -a"
        git branch -a
        read foo
        ;;
    19)
        echo "Cambiando de una rama nuevafeature a master con git checkout master"
        git checkout master
        read foo
        ;;
       
    20)
        echo "Eliminar una rama del repositorio externo con git push --delete nuevafeature"
        git push --delete nuevafeature
        read foo
        ;;
    21)
        echo "Eliminar una rama de mi PC de forma local con git branch -d nuevafeature"
        git branch -d nuevafeature
        read foo
        ;;
    22)
        echo "Modificar el nombre del commit con git commit --amend"
        git commit --amend
        read foo
        ;;
    23)
        echo "Archivos modificados en cada commit con  git log --stat"
        git log --stat
        read foo
        ;;
    24)
        echo "Ver los commits: el hash la fecha y el autor"
         git log --pretty=format:"%h %ad %s %an" --date=short
        read foo
        ;;
    25)
        echo "Ingresa el hash del commit al cual deseas cambiar:"
       read hash
        git checkout $hash
        read foo
        ;;
    26)
        echo "Volver al último commit"
        git checkout master
        read foo
        ;;
    27)
        echo "Ingresa el nombre del archivo a añadir:"
        read file
        git add $file
        read foo
        ;;

    
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
