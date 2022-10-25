FROM alpine:latest as pre-build
COPY ./myfile.sh ./code/myfile.sh
RUN echo "hey from pre-build layaer "

FROM alpine:latest as builder
COPY --from=pre-build ./code/myfile.sh ./build/myfile.sh
RUN echo "hey from build layer "

FROM alpine:latest as test
COPY --from=builder ./build/myfile.sh ./testing/myfile.sh
RUN echo "hey from test layer"

FROM alpine:latest as security-test
RUN echo "hey from security-test layer"

FROM alpine:latest as backend
RUN echo "hey from backend layer"

FROM alpine:latest as frontend
RUN echo "hey from frontend layer"

FROM alpine:latest as deploy
RUN echo "some deployment stuff"

FROM alpine:latest as post
RUN echo "clear workspace"
