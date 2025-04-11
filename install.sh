#!/usr/bin/env sh
curl -LsSf https://astral.sh/uv/install.sh | sh
git clone git@git.qt.io:alcroito/qmake2sbom.git
cd qmake2sbom
git submodule update --init --recursive --progress
uv sync
QT_PATH=$PWD/qt5 QT_SUBMODULES=qtbase .venv/bin/qmake2sbom --clone-qt --apply-patches

