# Use the official Neo4j Docker image as the base
FROM neo4j:5.14.0-community-bullseye

RUN apt-get install wget

# Set the working directory
WORKDIR /var/lib/neo4j

# Copy your dump file into the container
RUN wget -O /var/lib/neo4j/data/offshoreleaks.dump https://offshoreleaks-data.icij.org/offshoreleaks/neo4j/icij-offshoreleaks-5.13.0.dump
RUN ls /var/lib/neo4j/data/
COPY neo4j.conf /var/lib/neo4j/conf/neo4j.conf

# Start Neo4j and run the import command
CMD neo4j-admin database load --from-path /var/lib/neo4j/data/ offshoreleaks && neo4j start && tail -f $NEO4J_HOME/logs/neo4j.log