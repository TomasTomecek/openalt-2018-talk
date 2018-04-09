first-stage:
	@set -ex && \
	git clone -q git@github.com:TomasTomecek/conu.git && \
	cd conu && \
	git remote add upstream git@github.com:fedora-modularity/conu.git && \
	git fetch --all -q && \
	git checkout -q nspawn-madness && \
	git reset -q "HEAD^"

third-stage:
	@set -ex && \
	cd conu && \
	git checkout -- . && \
	git checkout -q nspawn-madness && \
	git reset --hard origin/nspawn-madness

fourth-stage:
	@set -ex && \
	cd conu && \
	git checkout -- . && \
	git checkout -q nspawn-madness && \
	git reset --hard origin/nspawn-madness
