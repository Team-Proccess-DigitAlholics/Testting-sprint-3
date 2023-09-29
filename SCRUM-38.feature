Feature: Visualización de horario de consultas

    Como fisioterapeuta, 
    deseo visualizar los días y las horas exactas en las que tengo agendadas consultas médicas 
    para llevar un control adecuado.

Criterio de aceptación #1: 
    Scenario: Usuario cuenta con citas agendadas
    Given que el usuario cuenta con una sesión iniciada con el rol de fisioterapeuta
    And presenta consultas médicas agendadas
    When abre la sección “Calendario de consultas”
    Then se presenta un calendario con las consultas agendadas.


Examples:
        | Fecha       | Hora    | Paciente         | Tipo de Consulta     |
        | "2023-09-10"| "09:00" | "Ana Gómez"      | "Fisioterapia"       |
        | "2023-09-15"| "14:30" | "Carlos López"   | "Rehabilitación"     |
    
Criterio de aceptación #2: 
    Scenario: Usuario no presenta ninguna cita
    Given que el usuario cuenta con una sesión iniciada con el rol de fisioterapeuta
    And no presenta consultas médicas agendadas
    When abre la sección “Calendario de consultas”
    Then se presenta un mensaje que indica que “no se cuenta con citas agendadas”.

Examples:
    | Mensaje                             | 
    | "No se encuentran citas agendadas"  |
    | "No se encuentran citas agendadas"  | 
    | "No se encuentran citas agendadas"  |  
