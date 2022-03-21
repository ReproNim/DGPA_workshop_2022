docker run kaczmarj/neurodocker:0.7.0 \
 		   generate docker \
           --base=ubuntu \
		   --pkg-manager=apt \
           --install apt-utils libgl1-mesa-glx libxrender1 \
             libsm6 xvfb bzip2 ca-certificates \
             curl git locales nano unzip \
		   --miniconda conda_install="python=3.7 xorg-libx11" \
             pip_install="dipy fury xvfbwrapper" create_env="r2d2" activate=true \
           > Dockerfile
