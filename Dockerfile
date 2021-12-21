FROM fedora:31

RUN yum update && yum -y install \
	texlive-scheme-full \
	texlive-collection-latexrecommended \
	texlive-collection-fontsrecommended \
	texlive-collection-pictures \
	texlive-collection-science \
	texlive-collection-langcyrillic \
    latexmk

COPY entrypoint.sh /usr/src/entrypoint.sh
COPY cv /usr/src/cv
RUN chmod +x /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
