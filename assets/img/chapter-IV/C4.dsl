workspace "Component Diagram - Ferova" "Description" {
    
    model {
        aporedado = person "Apoderado" "Madre, padre o cuidador responsable del paciente que registra el tratamiento, consulta su evolución, gestiona citas y se comunica con el personal de salud." "Apoderado"
        personalsalud = person "Personal de Salud" "Enfermeros responsables de gestionar y realizar el seguimiento de los pacientes, así como atender consultas de los apoderados" "Personal de salud"
        
        Ferovacenter = softwareSystem "Ferova Platform" "Plataforma digital que permite a los apoderados realizar el seguimiento del tratamiento de sus pacientes y al personal de salud gestionar y supervisar su atención." {
            website = container "Web Site" "Sitio Web estatico con contendido y infomracion sobre Ferova promueve al acceso a la aplicacion web y descarga de la aplicacion movil" "HTML CSS JS"  "Browser"

            apiApplication = container "API application" "Backend principal de la plataforma que gestiona la lógica de negocio, autenticación, seguimiento de pacientes, tratamientos, citas y comunicación entre apoderados y personal de salud." "C#. .NET" {
                iambc = component "Identity and Management" "Gestiona la autenticación, autorización y administración de usuarios de la plataforma." "C#, .NET" "Interface"
                comunicationbc = component "Communication Management" "Gestiona las consultas y comunicaciones entre los apoderados y el personal de salud." "C#, .NET" "Interface"
                patientmanagementbc = component "Patient Management" "Gestiona la información de los pacientes y su asignación al personal de salud." "C#, .NET" "Interface"
                treatementTrackingManagementbc = component "Treatment Tracking" "Gestiona el seguimiento del tratamiento, controles y estado de los pacientes." "C#, .NET" "Interface"
                healthyFacilityManagementbc = component "Health Facility" "Gestiona la información de las postas de salud y su relación con los pacientes y personal de salud." "C#, .NET" "Interface"
                analyticsReportingManagementbc = component "Analytics Reporting" "Genera métricas e indicadores a partir de la información de pacientes, tratamientos y controles." "C#, .NET" "Interface"
                AchievementsRewardsManagementbc = component "Achievements & Rewards" "Gestiona los logros, puntos y recompensas asociados al seguimiento del tratamiento." "C#, .NET" "Interface"
                NutritationDiaryBc = component "Nutritional Diary" "Gestiona el registro y seguimiento de la información nutricional de los pacientes." "C#, .NET" "Interface"
            
                iambc -> patientmanagementbc "Proporciona el contexto de usuario autenticado para la gestión de pacientes" "C#, .NET"
                patientmanagementbc -> treatementTrackingManagementbc "Proporciona información de los pacientes para gestionar su tratamiento" "C#, .NET"
                patientmanagementbc -> healthyFacilityManagementbc "Utiliza información de las postas para gestionar la asignación y seguimiento de pacientes" "C#, .NET"                
                treatementTrackingManagementbc -> analyticsReportingManagementbc "Proporciona datos de tratamientos y controles para generar métricas e indicadores" "C#, .NET"                
                patientmanagementbc -> comunicationbc "Proporciona información de pacientes y apoderados para gestionar las comunicaciones" "C#, .NET"
                treatementTrackingManagementbc -> AchievementsRewardsManagementbc "Proporciona información del cumplimiento del tratamiento para gestionar logros y recompensas" "C#, .NET"            
                patientmanagementbc -> NutritationDiaryBc "Proporciona información del paciente para gestionar su registro nutricional""C#, .NET"            
            }
            
            webApplication = container "Web Application" "Aplicación web que permite al personal de salud gestionar y realizar el seguimiento de los pacientes, tratamientos, controles y citas." "TypeScript, Angular" "Browser" {
                iam = component "Identity and Access Management" "Gestiona la autenticación, acceso y administración de usuarios del personal de salud." "Angular" "Interface"
                comunication = component "Communication" "Permite al personal de salud atender y gestionar consultas de los apoderados." "Angular" "Interface"
                patientmanagement = component "Patient Management" "Permite gestionar la información y el seguimiento de los pacientes asignados." "Angular" "Interface"
                AnalyticReporting = component "Analytics Reporting" "Permite consultar métricas e indicadores para analizar el seguimiento de los pacientes." "Angular" "Interface"
                HealthyFacilty = component "Health Facility" "Permite consultar y gestionar la información de las postas de salud." "Angular" "Interface"
                TreatmentTracking = component "Treatment Tracking" "Permite realizar el seguimiento de los tratamientos y controles de los pacientes." "Angular" "Interface"
            }
            
            MovileApplication = container "Movile Application" "Aplicación móvil que permite a los apoderados gestionar pacientes, registrar el cumplimiento del tratamiento, consultar su evolución, gestionar citas y comunicarse con el personal de salud." "Kotlit" "MobileApp" {
                
            }
            
            DataBase = container "Base de datos" "Almacena la información de usuarios, pacientes, tratamientos, citas, controles y demás datos de la plataforma." "MongoDB" "Database"
            
            iam -> patientmanagement "Proporciona el contexto del usuario autenticado" "Angular service"
            patientmanagement -> TreatmentTracking "Proporciona información del paciente para el seguimiento del tratamiento" "Angular service"
            TreatmentTracking -> AnalyticReporting "Proporciona datos de tratamientos y controles para generar indicadores" "Angular service"
            HealthyFacilty -> patientmanagement "Proporciona información de las postas para la gestión de pacientes" "Angular service"
            patientmanagement -> comunication "Proporciona información del paciente para gestionar comunicaciones" "Angular service"

            iam -> apiApplication "Gestiona autenticación y acceso mediante la API" "JSON/HTTPS"
            patientmanagement -> apiApplication "Consulta y gestiona información de los pacientes" "JSON/HTTPS"
            TreatmentTracking -> apiApplication "Consulta y gestiona tratamientos y controles" "JSON/HTTPS"
            AnalyticReporting -> apiApplication "Consulta datos para generar métricas e indicadores" "JSON/HTTPS"
            HealthyFacilty -> apiApplication "Consulta información de las postas de salud" "JSON/HTTPS"
            comunication -> apiApplication "Consulta y registra comunicaciones" "JSON/HTTPS"
            
            iambc -> database "Lee y escribe información de usuarios y credenciales" "MongoDB"
            patientmanagementbc -> database "Lee y escribe información de pacientes" "MongoDB"
            treatementTrackingManagementbc -> database "Lee y escribe información de tratamientos y controles" "MongoDB"
            healthyFacilityManagementbc -> database "Lee y escribe información de las postas de salud" "MongoDB"
            analyticsReportingManagementbc -> database "Lee información para generar métricas e indicadores" "MongoDB"
            comunicationbc -> database "Lee y escribe información de las comunicaciones" "MongoDB"
            AchievementsRewardsManagementbc -> database "Lee y escribe información de logros, puntos y recompensas" "MongoDB"
            NutritationDiaryBc -> database "Lee y escribe información del registro nutricional" "MongoDB"
        }
        
        Ressend = softwareSystem "Ressend" "Servicio externo utilizado para el envío de correos electrónicos" "Ressend"
        GoogleMaps = softwareSystem "Google Maps API" "Servicio externo utilizado para consultar ubicación" "Google Maps API"
        
        aporedado -> Ferovacenter "Consulta información y accede al sitio web" "[HTTPS]"
        personalsalud -> Ferovacenter "Gestiona pacientes, tratamientos, citas y consultas" "[HTTPS]"
        
        Ferovacenter -> Ressend "Envía correos electrónicos"
        Ferovacenter -> GoogleMaps "Consulta información de ubicación de postas"
        
        aporedado -> website "Consulta información sobre Ferova y descarga la aplicación móvil"
        personalsalud -> website "Consulta información sobre Ferova y accede a la aplicación web"
        
        website -> webApplication "Redirrecion a web applicacion"
        website -> MovileApplication "Instalar app movil"
        
        aporedado -> MovileApplication "Gestiona pacientes y realiza el seguimiento del tratamiento"
        personalsalud -> webApplication "Gestiona y realiza el seguimiento de pacientes"
        
        MovileApplication -> apiApplication "Consulta y registra información de pacientes, tratamientos, citas y seguimiento" "[HTTPS/JSON]"
        webApplication -> apiApplication "Consulta y gestiona información de pacientes, tratamientos, controles y citas" "[HTTPS/JSON]"
        
        apiApplication -> DataBase "Lee y escribe información en la base de datos"
        
        apiApplication -> Ressend "Envia mensaje al correo con el codigo de verifacion para el cambio de contraseña"
        Ressend -> aporedado "Entrega el código de verificación al correo del apoderado" "[HTPPS]"
        Ressend -> personalsalud "Entrega el código de verificación al correo del personal de salud" "[HTPPS]"
        
        apiApplication -> GoogleMaps "Consulta ubicaciones y coordenadas de las postas de salud" "[HTTPS/JSON]"
    
        webApplication -> iambc "Utiliza la API para gestionar la autenticación y el acceso" "JSON/HTTPS"
        MovileApplication -> iambc "Utiliza la API para gestionar la autenticación y el acceso" "JSON/HTTPS"
        webApplication -> patientmanagementbc "Utiliza la API para consultar y gestionar pacientes" "JSON/HTTPS"
        MovileApplication -> patientmanagementbc "Utiliza la API para consultar y gestionar pacientes" "JSON/HTTPS"
        webApplication -> treatementTrackingManagementbc "Utiliza la API para consultar y gestionar tratamientos y controles" "JSON/HTTPS"
        webApplication -> healthyFacilityManagementbc "Utiliza la API para consultar información de las postas de salud" "JSON/HTTPS"
        MovileApplication -> healthyFacilityManagementbc "Utiliza la API para consultar información de las postas de salud" "JSON/HTTPS"
        webApplication -> analyticsReportingManagementbc "Utiliza la API para consultar métricas e indicadores" "JSON/HTTPS"
        webApplication -> comunicationbc "Utiliza la API para gestionar las comunicaciones con los apoderados" "JSON/HTTPS"
        MovileApplication -> comunicationbc "Utiliza la API para gestionar las comunicaciones con el personal de salud" "JSON/HTTPS"
        webApplication -> AchievementsRewardsManagementbc "Utiliza la API para consultar logros y recompensas" "JSON/HTTPS"
        MovileApplication -> NutritationDiarybc "Utiliza la API para registrar y consultar información nutricional" "JSON/HTTPS"



    }

    views {

        systemContext Ferovacenter "SystemContext" "The system context diagram" {
            include *
            autoLayout lr
        }

        container Ferovacenter "Containers" "The container diagram" {
            include *
            autoLayout lr
        }
    
       component apiApplication "component" {
            include *
            autoLayout lr
        }
        
        component webApplication "components" {
            include *
            autoLayout lr
        }
    
        
        styles {
        
            element "Visitor" {
                shape Person
                background #B0FFFF
                stroke gray
                color black
                fontSize 20         
            }
            
            element "Apoderado" {
                shape Person
                background Red
                stroke gray
                color white
                fontSize 20         
            }
            
            element "Personal de salud" {
                shape Person
                background #003d7a    
                stroke #003d7a        
                color white
                fontSize 20         
            }
            
            element "Browser" {
                shape WebBrowser
                background "#A0E9E5"
                stroke "#003d7a"
                color black
                fontSize 20
            }
            
         
            element "Google Maps API" {
                background gray
                stroke #003d7a        
                color white
                fontSize 20   
            }
            
            element "MobileApp" {
                shape MobileDeviceLandscape
                background "#5F2116"
                stroke "#842E1F"
                color "#ffffff"
                fontSize 15
            }
          
            element "Ressend" {
                background gray
                stroke #003d7a        
                color white
                fontSize 20 
            }
            
            element "Database" {
                shape Cylinder
                background "#86D58E"
                stroke "#369B40"
                color black
                color white
            }
        }

        theme default
    }
    
    properties {
        structurizr.groupSeparator "/"
    }
}
