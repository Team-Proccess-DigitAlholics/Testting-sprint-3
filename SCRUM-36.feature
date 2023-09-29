Feature: Visualización del perfil

    Como usuario, 
    deseo ingresar a mi perfil 
    para visualizar los datos que presento en la aplicación.

Criterio de aceptación #1: 
    Scenario: Usuario cuenta con foto de perfil
    Given que el usuario cuenta con una sesión iniciada
    When abre la sección “Mi Perfil”
    Then el sistema muestra los datos registrados del usuario
    And su foto de perfil en la parte superior izquierda.


Examples:
        | Nombre         | Email             | Foto de Perfil       |
        | "Juan Pérez"   | "juan@email.com"  | [Imagen de perfil]   |
        | "Leo Arrieta"  | "leo@email.com"   | [Imagen de perfil]   |
    
Criterio de aceptación #2: 
    Scenario: Usuario no cuenta con foto de perfil
    Given que el usuario cuenta con una sesión iniciada
    And no cuenta con una foto de perfil
    When abre la sección “Mi Perfil”
    Then el sistema muestra los datos registrados del usuario
    And se presenta la opción “Subir foto de perfil”.

Examples:
        | Nombre             | Email                | Foto de Perfil       |
        | "Ana Gómez"        | "ana@email.com"      | [Icono para subir]   |
        | "Maria Ahuanari"   | "maria@email.com"    | [Icono para subir]   |


