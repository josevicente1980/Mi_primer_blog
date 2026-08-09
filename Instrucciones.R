# Para Crear un nuevo post
new_blog_post("Bienvenida")

# Instrucciones para activar GITHUB

# 1. Configurar la identidad de Git
# Estos datos se usarán para identificar quién realiza los commits.
# Normalmente se configura una sola vez en cada computadora.
usethis::use_git_config(
  user.name = "josevicente1980",
  user.email = "jose.ordonez@gmail.com"
)


# 2. Revisar la configuración y el estado de Git
# Comprueba si Git está instalado, configurado correctamente
# y si RStudio puede trabajar con Git.
usethis::git_sitrep()


# 3. Inicializar Git en el proyecto actual
# Convierte la carpeta del proyecto de R/RStudio en un repositorio Git.
# Crea la carpeta oculta .git y permite comenzar a registrar cambios.
# Este paso se realiza una sola vez por proyecto.
usethis::use_git()


# 4. Crear y conectar el repositorio con GitHub
# Crea un repositorio en GitHub a partir del proyecto local,
# configura GitHub como repositorio remoto y realiza la conexión.
usethis::use_github()


# ============================================================
# CAMBIOS EN GIT
# ============================================================

# 1. Revisar el estado actual del repositorio
# Permite ver qué archivos fueron modificados, creados o eliminados.
system("git status")


# 2. Registrar los cambios que queremos incluir
# El punto (.) significa agregar todos los archivos nuevos o modificados
# del proyecto al área de preparación (staging area).
system("git add .")


# 3. Guardar una versión de los cambios
# Crea un commit, es decir, una "fotografía" del estado actual del proyecto.
# El mensaje debe describir brevemente qué cambios se realizaron.
system('git commit -m "Actualiza contenido del blog"')


# 4. Subir los commits al repositorio remoto
# Envía a GitHub los cambios que ya fueron guardados mediante commit.
system("git push")