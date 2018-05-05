#!/usr/bin/env bash

echo "Publishing new version"
cd ..
currentPath=$(pwd)
echo "Project directory: "
echo ${currentPath}

echo "compiling tags"
echo "creating new tag file"
rm blog/articletags;
echo "{ \"blogs\":[" > blog/articleTags
articleTagPath=${currentPath}/blog/articleTags
echo "Article tags path: ${articleTagPath}";
cd blog/articles



for month in *; do
   echo "Folder: $month";
    for day in ${month}/*; do
        echo "Day: $day";
            for post in ${day}/*; do
                echo "$post";
                ${post}/tags.json >> ${articleTagPath};
            done
    done
done