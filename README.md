# Offshore leaks docker build

Docker container to run neo4j database provided by offshoreleaks.

# Description

Offshoreleaks provides their database in neo4j graph database dump format 

https://offshoreleaks.icij.org/pages/database

As of writing this the links are as follows.

Neo4j version4 : https://offshoreleaks-data.icij.org/offshoreleaks/neo4j/icij-offshoreleaks-4.4.26.dump
Neo4j version5 : https://offshoreleaks-data.icij.org/offshoreleaks/neo4j/icij-offshoreleaks-5.13.0.dump

This repository provides dockerfile for building a docker image compatible with version5 of database.

# Usage
- docker build . -t neo4joffshore
- docker run -p 7474:7474 neo4joffshore.
- The database is loaded on container start so it will take a few seconds until database is available at http://localhost:7474








