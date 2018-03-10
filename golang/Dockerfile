FROM circleci/golang:1.10
ENV DOCKERVER="17.03.0-ce"
ENV DOCKERCOMPOSEVER="17.03.0-ce"
RUN curl -L -o /tmp/docker-${DOCKERVER}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${DOCKERVER}.tgz
RUN tar -xz -C /tmp -f /tmp/docker-${DOCKERVER}.tgz
RUN sudo mv /tmp/docker/* /usr/bin
RUN curl -L -o /tmp/docker-compose https://github.com/docker/compose/releases/download/${DOCKERCOMPOSEVER}/docker-compose-`uname -s`-`uname -m`
RUN sudo mv /tmp/docker-compose /usr/bin
RUN sudo chmod +x /usr/bin/docker-compose
RUN go get -u \
	  github.com/alecthomas/gometalinter \
	  github.com/ckaznocha/protoc-gen-lint \
	  github.com/divan/expvarmon \
	  github.com/gogo/protobuf/gogoproto \
	  github.com/gogo/protobuf/jsonpb \
	  github.com/gogo/protobuf/proto \
	  github.com/gogo/protobuf/protoc-gen-gogo \
	  github.com/golang/dep/cmd/dep \
	  github.com/golang/protobuf/ptypes \
	  github.com/jteeuwen/go-bindata/... \
	  github.com/matryer/moq \
	  github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
	  github.com/onsi/ginkgo/ginkgo \
	  github.com/t-yuki/gocover-cobertura \
	  github.com/tcnksm/ghr \
	  github.com/uber/go-torch \
	  github.com/xordataexchange/crypt/bin/crypt \
	  golang.org/x/tools/cmd/goimports \
    github.com/goreleaser/goreleaser
RUN gometalinter --install --update