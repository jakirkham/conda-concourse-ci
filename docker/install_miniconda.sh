fname=$(find . -name Miniconda* -type f -exec ls -1t "{}" +; )
# this is Ray Donnelly's custom Miniconda, built with our new gcc toolchain
bash -x $fname -bfp /home/dev/miniconda
rm $fname
/home/dev/miniconda/bin/conda config --set show_channel_urls True
/home/dev/miniconda/bin/conda update --yes --all
/home/dev/miniconda/bin/conda install --yes -c conda-canary git conda-build curl anaconda-client
/home/dev/miniconda/bin/conda install --yes -c msarahan conda-concourse-ci
/home/dev/miniconda/bin/conda config --add channels rdonnelly
/home/dev/miniconda/bin/conda config --set add_pip_as_python_dependency False
/home/dev/miniconda/bin/conda config --set anaconda_upload True
/home/dev/miniconda/bin/conda clean -ptiy
