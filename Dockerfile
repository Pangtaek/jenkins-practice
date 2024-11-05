# Open JDK 17이 설치된 Apline Linux 이미지 기반으로 함(맥은 apline 오류로 slim으로 변경)
FROM openjdk:17-jdk-slim
# 빌드 된 jar 파일을 컨테이너의 루트 디렉토리에 app.jar로 복사함
COPY build/libs/*.jar app.jar
# 컨테이너 시작 시 app.jar 파일을 실행하는 명령을 설정
ENTRYPOINT ["java", "-jar", "app.jar"]