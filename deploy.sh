#!/bin/bash

site=manual.html
depend=
title='簡易コーナーリフレクターの作り方'

# ページをgh-pagesにデプロイ準備
make

git checkout gh-pages
if [ $? != 0 ]; then
    echo 'gh-pagesブランチに切り替えられません'
    exit
fi

git checkout master -- '*.png'
git checkout master -- '*.css'

if [ ! -z $depend ]; then
    git checkout master -- $depend
fi

mv -f $site index.html

