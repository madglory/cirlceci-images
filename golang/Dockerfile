FROM circleci/golang:latest
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
  golang.org/x/tools/cmd/goimports
RUN gometalinter --install --update
