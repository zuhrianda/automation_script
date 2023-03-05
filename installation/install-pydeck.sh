./install-node.sh
pip install pydeck
jupyter labextension install @jupyter-widgets/jupyterlab-manager
DECKGL_SEMVER=`python -c "import pydeck; print(pydeck.frontend_semver.DECKGL_SEMVER)"`
jupyter labextension install @deck.gl/jupyter-widget@$DECKGL_SEMVER
