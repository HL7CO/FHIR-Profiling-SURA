# Comando SUSHI

Para realizar la transformación de artefactos FHIR en sintaxis FHS `*.fsh`, a archivos FHIR en formato JSON, se ejecutó el siguiente comando en el terminal (CLI):

```
sushi /FHIR-Profiling/Class5/SUSHI/FSH-tank -o /FHIR-Profiling/Class5/SUSHI/Output  
```

## Estructura del proyecto

El proyecto cuenta con un conjunto de directorios (carpetas), organizados con el siguiente tipo de estructura:

```
FSH-tank
├── input
|    └── fsh
|        ├── codesystems
|        |    ├── file1.fsh
|        |    └── file2.fsh
|        ├── extensions
|        |    ├── file3.fsh
|        |    └── file4.fsh
|        ├── instances
|        |    ├── file5.fsh
|        |    └── file6.fsh
|        ├── profiles
|        |    ├── file7.fsh
|        |    └── file8.fsh
|        ├── valuesets
|        |    ├── file9.fsh
|        |    └── file10.fsh
|        ├── aliases.fsh
|        ├── index.txt
|        └── fileX.fsh
└── sushi-config.yaml
```

## Archivo de configuración

El archivo `sushi-config.yaml`, contiene los parámetros generales del proyecto, con la siguiente sintaxis:

```
id: fhir.profiling.example
canonical: https://example.org/fhir
name: ExampleProfilingIG
title: "HL7 FHIR Implementation Guide: FHIR profiling course project | Team A"
description: An example of IG FHIR learning using SUSHI and FSH tools for the design and publication of HL7 FHIR profiles and implementation guides.
fhirVersion: 4.0.1
status: draft
license: CC0-1.0
date: 2023-06-23
version: 0.1
copyrightYear: 2023+
releaseLabel: STU1
publisher:
  name: HL7 Colombia - Official Affiliate of Health Level Seven International
  url: http://www.hl7co.org
  email: nombre@example.com
contact:
  - name: Carolina Rodriguez
    telecom:
      - system: email
        value: carolina.rodriguez@example.org
        use: work
  - name: Juan Pérez
    telecom:
      - system: email
        value: juan.perez@example.org
        use: work
jurisdiction: urn:iso:std:iso:3166#CO "Colombia"
```

Los archivos resultantes, se almacenarón en el directorio: `/FHIR-Profiling/Class5/GoFSH/Output`

**SUSHI** generará automáticamente el recurso FHIR que contiene la información de la Guía de Implementación `ImplementationGuide-fhir.profiling.example.json`.