#기본으로 사용할 이미지 다운로드
FROM openjdk:15
#3번 서버에 빌드된 자르파일을 기본이미지에 복붙
# COPY clovircm-web.jar clovircmBase.jar
#해당 이미지를 컨테이너로 띄울 시 자동으로 자르파일이 실행되도록 명령
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]
#Docker run 시점에 profile 값( ex) dev,local)을 Arg 형태로 넘겨준다. (ex) docker run -e SPRING_PROFILES_ACTIVE=dev)
#ARG SPRING_PROFILES_ACTIVE
#RUN echo $SPRING_PROFILES_ACTIVE
#ENV SPRING_PROFILES_ACTIVE=$SPRING_PROFILES_ACTIVE
