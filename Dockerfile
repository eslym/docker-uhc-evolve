FROM openjdk:8-jdk-alpine

ARG version=1.13.2

WORKDIR /minecraft
COPY ${version}/build.sh /minecraft/build.sh
COPY start.sh /minecraft/start.sh
COPY Prop.java /minecraft/Prop.java
COPY ${version}/UHCEvolve /minecraft/world/datapacks/UHCEvolve
RUN chmod +x /minecraft/*.sh && ./build.sh
RUN chown -R nobody:nobody /minecraft && chown -R root /minecraft/world/datapacks/UHCEvolve
EXPOSE 25565

ENV MAX_HEAP=1024M
ENV MIN_HEAP=256M

ENV MOTD="Yet another UHC Evolve Server"
ENV WHITELIST=false
ENV MAX_PLAYERS=20
ENV ONLINE_MODE=true
ENV NETHER=true

USER nobody
CMD ["/minecraft/start.sh"]