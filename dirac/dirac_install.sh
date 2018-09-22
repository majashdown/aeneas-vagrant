dirac_dir=dirac
dirac_version=v6r19p18

mkdir -p $dirac_dir
pushd $dirac_dir
curl -o dirac-install https://raw.githubusercontent.com/DIRACGrid/DIRAC/integration/Core/scripts/dirac-install.py
chmod +x dirac-install
./dirac-install -r $dirac_version
rm -f dirac-install
popd

echo '' >> .bash_profile
echo '. $HOME/dirac/bashrc' >> .bash_profile
