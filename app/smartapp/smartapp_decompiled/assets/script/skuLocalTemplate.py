#!/usr/bin/python3
# -*- coding: utf-8 -*-  
import json
import urllib
import sys, os, zipfile

root=os.path.split(os.path.realpath(__file__))[0]
sourceFile=root+'/AliXDetailSKU_iOS.bundle/originalUltronData.json'
isAndroid=False
if not os.path.isfile(sourceFile):
    sourceFile=root+'/../ultron/originalUltronData.json'
    isAndroid=True
    
def unzip_file(zip_src, dst_dir):
    r = zipfile.is_zipfile(zip_src)
    if r:     
        fz = zipfile.ZipFile(zip_src, 'r')
        for file in fz.namelist():
            fz.extract(file, dst_dir)       
    else:
        print(zip_src+' is not zip')


with open(sourceFile, 'r') as f:
    data=json.load(f)
    for x in data['blocks']:
        for y in x['components']:
            url=y['frontComponentAddress']['ios']
            print(url)
            fileName=y['frontComponentName']+'.zip'
            urllib.urlretrieve(url,fileName)

            zipSrc=os.getcwd()+'/'
            zipSrc=zipSrc+fileName

            if isAndroid:
                dstDir=root+'/../template/taobao_sku/'
            else:
                dstDir=root+'/DinamicXPreset_taobao_sku/'

            dstDir=dstDir+y['frontComponentName']
            dstDir=dstDir+'/1/'
            if not os.path.exists(dstDir):
                os.makedirs(dstDir)
            unzip_file(zipSrc, dstDir)
            os.remove(zipSrc)