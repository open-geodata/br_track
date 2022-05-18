# Conversão *img* para *shp*

<br>

Arquivos em [formato *.img*](https://en.wikipedia.org/wiki/Garmin_.img) são utilizados nos aparelhos de GPS da marca Garmin e apresentam os vetores de rodovias, vias de acessos, trilhas, hidrografia entre diversas outras feições geográficas.

Trata-se de um material interessante para ser utilizado em Sistemas de Informação Geográfica e análises espaciais, motivo pelo qual desenvolvi *script* para proceder a conversão de formatos .

<br>

----

## Passo a Passo:

1. Com o arquivo *convert_img_mp_shp.ipynb* converti de *.img* para *.mp*, por meio de *scripts* em *vba* que usam o *software **GPSMapEdit***;
2. Ainda com o mesmo *script*, converto arquivos *.mp* para *.shp* (*shapefile*), por meio do *software **GlobalMapper***.
3. Com o *script merge_all_data.ipynb*, unifiquei todos os *shapefiles*, fiz alguns tratamentos e exportei para geopackage.

<br>

----

## Pré-requisitos

- [GlobalMapper](http://www.bluemarblegeo.com/products/global-mapper.php) instalado;
- [GPSMapEdit](https://www.geopainting.com/) instalado;
