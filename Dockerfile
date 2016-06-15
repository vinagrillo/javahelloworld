FROM java:7-alpine
WORKDIR /home/root/javahelloworld
RUN mkdir src
COPY HelloWorld.java src/
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO var
ENV KKK llll
RUN touch pp.txt
VOLUME /mivolumen
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
