powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
$env:Path = "$HOME\.local\bin;$env:Path"
git clone git@git.qt.io:alcroito/qmake2sbom.git
cd qmake2sbom
git submodule update --init --recursive --progress
uv sync
$env:QT_PATH="$PWD\qt5"; .\.venv\Scripts\qmake2sbom.exe --clone-qt --apply-patches

