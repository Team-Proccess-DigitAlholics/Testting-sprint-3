Feature: Visualización de las reseñas.

    Como fisioterapeuta 
    quiero ver las reseñas que me mandan mis pacientes 
    para mejorar mi servicio

Criterio de aceptación #1: 
    Scenario: Visualización de Reseñas de los Pacientes
    Given que soy un fisioterapeuta autenticado en la aplicación desde mi celular,
    When accedo a la sección de "Reseñas" o "Feedback",
    Then se muestra una lista de todas las reseñas que los pacientes han enviado sobre mi servicio.
    And para cada reseña se muestra la puntuación, el comentario del paciente y la fecha en que se realizó.


Examples:
    | Puntuación | Comentario                             | Fecha       |
    | 5          | "Excelente servicio, muy recomendado"  | "2023-09-15"|
    | 4          | "Buen trato, me ayudó mucho"           | "2023-09-10"|

    
Criterio de aceptación #2: 
    Scenario: Ordenamiento de Reseñas
    Given que soy un fisioterapeuta autenticado en la aplicación desde mi celular,
    And tengo varias reseñas de pacientes,
    When accedo a la sección de "Reseñas" o "Feedback",
    Then las reseñas se ordenan cronológicamente o por puntuación para que pueda ver las más recientes o las más relevantes primero.

    
Examples:
    | Puntuación | Comentario                            | Fecha       |
    | 5          | "Excelente servicio, muy recomendado" | "2023-09-15"|
    | 4          | "Buen trato, me ayudó mucho"          | "2023-09-10"|
    | 3          | "Regular, podría mejorar"             | "2023-09-05"|


