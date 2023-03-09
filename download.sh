
function downloadPhenology {
  mkdir -p data
  cd data
  wget https://zenodo.org/record/7646864/files/in_situ_cotton_phenology_labels.csv?download=1
  wget https://zenodo.org/record/7646864/files/parcels.geojson?download=1
  cd ..
}

function downloadFieldImages {
  mkdir -p data/images
  cd data/images
  wget https://zenodo.org/record/7646864/files/cotton_phenology_in-situ_photos_2021.zip?download=1
  unzip cotton_phenology_in-situ_photos_2021.zip
  rm cotton_phenology_in-situ_photos_2021.zip
  cd ..
}


if [ "$1" == "phenology" ]; then
    downloadPhenology
elif [ "$1" == "images" ]; then
    downloadFieldImages
elif [ "$1" == "all" ]; then
    downloadPhenology
    downloadFieldImages
else
    echo "please provide 'phenology', 'images', or 'all' as argument"
fi
