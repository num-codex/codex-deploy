# Changelog

All notable changes to this project will be documented in this file.

## Component specific changes

Please refer to the respective repositories for a more in depth changelog of single components:

|Component|Link|
|--|--|
|UI|<https://github.com/medizininformatik-initiative/feasibility-gui>|
|Ontology Generation|<https://github.com/medizininformatik-initiative/fhir-ontology-generator>|
|Backend|<https://github.com/medizininformatik-initiative/feasibility-backend>|
|AKTIN Broker|<https://github.com/aktin/broker>|
|AKTIN Feasibility Plugin|<https://github.com/medizininformatik-initiative/feasibility-aktin-plugin>|
|DSF Feasibility Plugin|<https://github.com/medizininformatik-initiative/feasibility-dsf-process>|
|FLARE|<https://github.com/medizininformatik-initiative/flare>|
|Blaze FHIR server|<https://github.com/medizininformatik-initiative/blaze>|

## [3.0.0] - 2023-08-08

### Overall

- Updated all components and underlying libraries to the new versions
- Updated all components to version compatible with ontology version 2.0
- Adjusted readme to reflect changes in the underlying components

### Features

| Feature | Affected Components |
| -- | -- |
|Added support for referenced criteria|UI, backend, Ontology, Sq2cql, FLARE|
|Added support for composite search parameters|UI, SQ, Ontology, Sq2cql, FLARE|
|Updated to new DSF version v1.0.0 compatible with new DSF verison v1.x | Backend, DSF feasibility plugin|
|Added Dateselection|UI|
|Update ontology to new ontology generation and added ontology to images directly| Ontology, Backend, FLARE|
|Added encrypted result logging| Backend|
|Add support for self-signed certificates| Backend, FLARE, DSF feasibility plugin |


## [2.1.0] - 2023-07-25

### Overall

- Updated AKTIN Client to 1.6.0: Fix websocket timeout and improve error handling  - <https://github.com/medizininformatik-initiative/feasibility-aktin-plugin/releases/tag/v1.6.0>
- Updated FLARE to 1.0: Fix Execution Operation - <https://github.com/medizininformatik-initiative/flare/releases/tag/v1.0.0>
- Updated Blaze to 0.22: implements $everything, adds basic frontend, Support for Custom Search Parameters <https://github.com/samply/blaze/releases/tag/v0.22.0>
- Added Troubleshooting specific for triangle
- Update testdata repo from MII


## [2.0.0] - 2023-03-29

### Overall

- Updated all components and underlying libraries to the new versions
- Updated UI to angular 15
- Updated keycloak to 21.0
- Updated nginx to 1.23
- Refactored deploy repository - removed DSF from this deployment and added reference to DSF deployment in Readme
- Removed hapi fhir-server from deployment

### Features

| Feature | Affected Components |
| -- | -- |
|Added calculated criterion age|Ontology, Sq2cql, FLARE|
|Improved at site obfuscation|DSF Feasibility Plugin, AKTIN Client|
|Added SQ query import and export|UI|
|Improved FHIR query execution and result caching |FLARE|
|Update Consent to new search params and add central MII consent query|UI, Ontology|
|Update ontology to newest KDS version| Ontology|
|Update AKTIN client to new version, move query handling to Java plugin and add query validation|AKTIN client|
|SQ query validation|Backend, AKTIN client|
|Add CQL execution to direct broker| Backend|

### Security and Privacy

| Feature | Affected Components |
| - | - |
|Added extra security measures, which restrict number queries a user can send and results a user can view|UI, Backend|
|Improved at site obfuscation|DSF Feasibility Plugin, Aktin Client|
|Hard rate limit at sites for AKTIN and DSF feasibility plugins|DSF feasibility plugin, AKTIN Client|
|Query results are no longer persisted and only kept in memory for a configurable amount of time|Backend|
|Delete query results from central DSF and AKTIN broker on collection|Backend|
|User blacklisting if too many queries are sent in a given time|Backend|

## [1.6.0] - 2022-09-08
