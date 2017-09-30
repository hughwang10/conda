#--no-cache
docker image build -t hugh/conda3 .
docker rmi $(docker images -q --filter "dangling=true")
docker images
