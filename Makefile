clean:
	mvn clean

compile:
	mvn compile -Pnative -DskipTests -X

test:
	mvn test -Pnative 

package:
	mvn package -Pdist -DskipTests -Dtar

native:
	mvn package -Pdist,native -DskipTests -Dtar -X

source:
	mvn package -Psrc -DskipTests

all:
	mvn package install -Pdist,native,docs,src -DskipTests -Dtar -X

findbugs:
	mvn compile findbugs:findbugs -DskipTests

checkstyle:
	mvn compile checkstyle:checkstyle -DskipTests

install:
	mvn install -DskipTests

deploy:
	mvn deploy -DskipTests

eclipse:
	mvn eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=true -DskipTests
