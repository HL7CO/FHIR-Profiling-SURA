# Herramienta IG Publisher

Para ejecutar la generación automática de la Guía de Implentación (paquete HTML), se requiere utilizar la herramienta `publisher.jar`.

Y ejecutar el siguiente comando en el terminal (CLI):


```
java -jar publisher.jar -ig 'ig.ini' -validation-off
```

## Estructura del proyecto

El proyecto cuenta con un conjunto de directorios (carpetas), organizados con el siguiente tipo de estructura:

```
FHIR-ProfilingProject
├── input
|       ├── ImplementationGuide-fhir.profiling.example.json
|       ├── example
|       |   ├── ResourceExample1.json
|       |   └── ResourceExample2.json
|       ├── extensions
|       |   ├── StructureDefinition-Extension1.json
|       |   └── StructureDefinition-Extension1.json
|       ├── images
|       |   ├── image1.png
|       |   └── image2.png
|       ├── includes
|       |   └── menu.xml
|       ├── pages
|       |   ├── index.md
|       |   ├── pageA.md
|       |   └── pageB.md
|       ├── profiles
|       |   ├── StructureDefinition-Profile1.json
|       |   └── StructureDefinition-Profile2.json
|       └── vocabulary
|           ├── CodeSystem-1.json
|           ├── CodeSystem-2.json
|           ├── ValueSet-1.json
|           └── ValueSet-2.json
├── ig.ini
└── sushi-config.yaml
```

## Archivo de configuración

El archivo `ig.ini`, contiene los parámetros generales del proyecto (guía de implementación y template visual), con la siguiente sintaxis:

```
[IG]
# ini file for the Implementation Guide publisher
# see comments below for instructions
ig = input/ImplementationGuide-fhir.profiling.example.json
template = fhir.base.template#current
#template = ./local-template
```

## Resultado de la ejecución

Una vez ha finalizado la ejecución de la herramienta `IG publisher.jar` (tarda algunos minutos) los archivos generados (paquete HTML), se almacenarán en un nuevo directorio (carpeta) llamada **"output"** `/FHIR-Profiling/Class5/IG-publisher/FHIR-ProfilingProject/output/`.

El archivo `../IG-publisher/full-ig.zip` contiene un ejemplo generado del paquete listo para ser publicado en la URL de la dirección canónica definidad para almacenar el contenido.

Este archivo se encuentra dentro del directorio (carpeta) output `../IG-publisher/FHIR-ProfilingProject/output` 