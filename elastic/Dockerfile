FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.4

COPY elasticsearch.yml /usr/share/elasticsearch/config/

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu \
	&& /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji \
	&& /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn \
	&& /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-stempel