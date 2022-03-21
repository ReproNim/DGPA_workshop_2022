### Commands from the Virtualization lecture of the Montreal BrainHack School are listed here

##### intro #####

cd path/to/your/desktop

python fancy_DTI_analyzes.py

##### virtualization using conda #####

conda create -y -n r2d2  python=3.7 scipy numpy matplotlib

ls

conda activate r2d2

conda info --envs

conda list

conda deactivate

conda activate r2d2

python fancy_DTI_analyzes.py

pip install dipy fury

conda env export > r2d2.yml

python fancy_DTI_analyses.py

conda env export > r2d2.yml

conda env create -f r2d2.yml


##### Docker 101 - a new hope #####

docker

docker run hello-world

docker pull ubuntu

docker images

docker run ubuntu

docker run ubuntu echo “hello from within your container”

docker run -it ubuntu

ls

exit

docker ps

docker ps -a

docker run -it --rm ubuntu

docker run -it --rm ubuntu

mkdir defeat_unreproducibility_empire

mkdir /path/to/your/desktop/galaxy/hoth

docker run -it --rm -v /path/to/your/desktop/galaxy/hoth:/rebel_base ubuntu

touch /rebel_base/death_star_plans.png

exit

docker run -it --rm -v /path/to/your/desktop/galaxy/hoth:/rebel_base:ro ubuntu

rm /rebel_base/death_star_plans.png

exit

docker run -it --rm  \
-v /path/to/your/desktop/galaxy/hoth:/rebel_base:ro \
-v /path/to/your/desktop/galaxy/dagobah:/x-wing \
ubuntu

exit

##### Docker 101 - The build strikes back #####


cd /path/to/your/desktop/galaxy/hoth

touch Dockerfile

FROM ubuntu

ARG DEBIAN_FRONTEND="noninteractive"

ENV LANG="en_US.UTF-8" \
LC_ALL="en_US.UTF-8" \
ND_ENTRYPOINT="/docker/startup.sh"

docker build -t millennium_falcon .

docker images

RUN export ND_ENTRYPOINT="/docker/startup.sh" \
&& apt-get update -qq \
&& apt-get install -y -q --no-install-recommends \
            apt-utils libgl1-mesa-glx libxrender1 \
            libsm6 xvfb bzip2 ca-certificates \
            curl git locales nano unzip

docker build -t millennium_falcon .

docker images

docker run kaczmarj/neurodocker:0.7.0 \
generate docker --base=ubuntu \
--pkg-manager=apt \
--install apt-utils libgl1-mesa-glx \
          libxrender1 libsm6 xvfb \
          bzip2 ca-certificates curl \
          git locales nano unzip

docker build -t millennium_falcon .

docker run kaczmarj/neurodocker:0.7.0 \
generate docker --base=ubuntu \
--pkg-manager=apt \
--install apt-utils libgl1-mesa-glx \
          libxrender1 libsm6 xvfb \
          bzip2 ca-certificates curl \
          git locales nano unzip
--miniconda conda_install="python=3.7" \
    pip_install="dipy fury" create_env="r2d2" activate=true \
> Dockerfile

docker build -t millennium_falcon .

docker images -a

docker run -it --rm \
-v /path/to/your/desktop/galaxy/:/rebel_base:ro\
millennium_falcon

python /rebel_base/fancy_DTI_analyzes.py

exit

### Attention: the below code should be pasted in the beginning of our fancy_DTI_analyses.py script ###
from xvfbwrapper import Xvfb
vdisplay = Xvfb(width=1920, height=1080)
vdisplay.start()
########################################################################################################

docker run kaczmarj/neurodocker:0.7.0 \
generate docker --base=ubuntu \
--pkg-manager=apt \
--install apt-utils libgl1-mesa-glx \
          libxrender1 libsm6 xvfb \
          bzip2 ca-certificates curl \
          git locales nano unzip
--miniconda conda_install="python=3.7" \
    pip_install="dipy fury xvfbwrapper" create_env="r2d2" activate=true \
> Dockerfile

docker build -t millennium_falcon .

docker run -it --rm \
-v /path/to/your/desktop/galaxy/:/rebel_base:ro\
millennium_falcon

python /rebel_base/fancy_DTI_analyzes.py

ls

docker tag millennium_falcon your_docker_id/millennium_falcon:kessel-run

docker images

docker push your_docker_id/millennium_falcon:kessel-run

docker images -a