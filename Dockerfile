FROM continuumio/anaconda3

RUN apt-get update --fix-missing && \
	apt-get upgrade -y

RUN apt-get autoremove && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN \
	conda update conda -y

# RUN 
# 	pip install altair
EXPOSE 8888

CMD ["/bin/bash","-c","/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"]
