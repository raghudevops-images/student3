FROM centos
RUN yum install java -y
COPY target/student.war /student.war
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
