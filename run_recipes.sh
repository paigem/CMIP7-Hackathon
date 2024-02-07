#!/bin/bash

. ./admin/bash_utilities.sh

maps=("recipes/ocean/maps/map1.yml" "recipes/ocean/maps/map2.yml" "recipes/ocean/maps/map3.yml" "recipes/ocean/maps/map4.yml" "recipes/ocean/maps/map5.yml" "recipes/ocean/maps/recipe_ocean_quadmap.yml")
transects=("recipes/ocean/transects/transect1.yml" "recipes/ocean/transects/transect2.yml" "recipes/ocean/transects/transect3.yml")
timeseries=("recipes/ocean/timeseries/timeseries1.yml" "recipes/ocean/timeseries/timeseries2.yml" "recipes/ocean/timeseries/timeseries3.yml" "recipes/ocean/timeseries/timeseries4.yml" "recipes/ocean/timeseries/timeseries5.yml" "recipes/ocean/timeseries/timeseries6.yml" "recipes/ocean/timeseries/timeseries_atlantic_stream_function.yml" "recipes/ocean/timeseries/timeseries_drake.yml")
depths=("recipes/ocean/depth_profiles/depth_integration.yml" "recipes/ocean/depth_profiles/depth_profile1.yml" "recipes/ocean/depth_profiles/depth_profile2.yml")

recipes=( "${maps[@]}" "${transects[@]}" "${timeseries[@]}" "${depths[@]}" )

if [[ $# != 0 ]]; then

case $1 in

	maps)
		recipes=( "${maps[@]}" )
	;;

	transect)
		recipes=("${transects[@]}")
	;;

	timseries)
		recipes=("${transects[@]}")
	;;

	depths)
		recipes=("${transects[@]}")
	;;
esac


fi

for recipe in ${recipes[@]};
do
  run_recipe $recipe
done




