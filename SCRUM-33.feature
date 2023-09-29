Feature: Publicación de videos de ejercicios

    Como fisioterapeuta, 
    deseo subir videos de rutinas de ejercicios 
    para ayudar a mis pacientes a comprender como se deben realizar los ejercicios.

Criterio de aceptación #1: 
    Scenario: Usuario visualiza los videos que ha subido
    Given el usuario con una sesión iniciada con el rol de fisioterapeuta,
    When abre la sección “Mis videos”,
    Then se presentan todos los videos que ha subido.
    And se presenta la opción “Subir video”.


Examples: 
    | Nombre del Video    | Tipo de Tratamiento |       Descripción           |
    | "Video1.mp4"        | "Estiramiento"      | "Rutina de estiramiento"    |
    | "Video2.mp4"        | "Fuerza"            | "Rutina de fortalecimiento" |
    
Criterio de aceptación #2: 
    Scenario: Usuario sube un video
    Given el usuario se encuentra en la sección “Mis videos”,
    When selecciona la opción “Subir video”,
    Then el sistema direcciona al formulario de publicación de videos. 

Criterio de aceptación #3: 
    Scenario: Se publica el video
    Given el usuario se encuentra en el formulario de publicación de videos,
    When ingrese el nombre del video, tipo de tratamiento, descripción y adjunto un archivo de formato MP4,
    Then el sistema publicará el video.

    
Examples: 
    | Nombre del Video         | Tipo de Tratamiento | Descripción                     |  Archivo Adjunto           |
    | "Rutina Flexibilidad"    | "Flexibilidad"      | "Rutina acerca de flexibilidad" | "Rutina Flexibilidad.mp4"  |
    | "Entrenamiento Cardio"   | "Cardio"            | "Rutina acerca de cardio"       | "Entrenamiento Cardio.mp4" |
