Feature: Búsqueda de tratamientos 

    Como usuario,
    deseo encontrar tratamientos de terapia física que pueda realizar desde mi casa 
    para mejorar mi condición física

Criterio de aceptación #1: 
    Scenario: Usuario ingresa a la sección “Tratamientos”
    Given el usuario cuenta con una sesión iniciada
    When abre la sección “Tratamientos”
    Then el sistema muestra una lista de tratamientos de terapia física
    And se presenta la sección “Buscar” en la parte superior de la pantalla.


Examples:
    | Nombre del Tratamiento   | Tipo de Tratamiento   | Descripción                               |
    | "Ejercicios de Espalda"  | "Estiramiento"        | "Rutina de estiramiento para la espalda"  |
    | "Ejercicios en Casa"     | "Fuerza"              | "Rutina de ejercicios de fuerza en casa"  |
    
Criterio de aceptación #2: 
    Scenario: Usuario busca un tratamiento por nombre
    Given el usuario se encuentra en la sección “Tratamientos”
    And el sistema presenta la sección “Buscar” en la parte superior de la pantalla
    When ingresa el nombre del tratamiento "Ejercicios de Espalda" en el campo “Buscar”
    Then el sistema presenta los tratamientos que coinciden con el nombre del tratamiento ingresado.

Examples:
    | Nombre del Tratamiento   | Tipo de Tratamiento   | Descripción                                |
    | "Ejercicios de Espalda"  | "Estiramiento"        | "Rutina de estiramiento para la espalda"   |
    | "Ejercicios en Casa"     | "Fuerza"              | "Rutina de ejercicios de fuerza en casa"   |


Criterio de aceptación #3: 
    Scenario: Usuario no encuentra resultados que coincidan con la búsqueda
    Given el usuario se encuentra en la sección “Tratamientos”
    And el sistema presenta la sección “Buscar” en la parte superior de la pantalla
    When ingresa el nombre del tratamiento "Yoga para Rodillas" en el campo “Buscar”
    And no existen tratamientos que concuerden con el nombre ingresado
    Then se presenta el mensaje: “No se encontraron resultados” en pantalla.


   Examples:
    | Nombre del Tratamiento | Tipo de Tratamiento | Descripción                            | Mensaje                       S |
    | "Yoga para Espalda"    | "Estiramiento"      | "Rutina de yoga para la espalda"       | "No se encontraron resultados" |
    | "Pilates en Casa"      | "Fuerza"            | "Rutina de pilates para hacer en casa" | "No se encontraron resultados" |
