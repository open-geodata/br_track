# Conversão _img_ para _shp_

Arquivos em [formato _.img_](https://en.wikipedia.org/wiki/Garmin_.img) são utilizados nos aparelhos de GPS da marca Garmin e apresentam os vetores de rodovias, vias de acessos, trilhas, hidrografia entre diversas outras feições geográficas.

Trata-se de um material interessante para ser utilizado em Sistemas de Informação Geográfica e análises espaciais, motivo pelo qual desenvolvi _script_ para proceder a conversão de formatos.

> Atualizado em 19.08.2021

<br>

---

### Passo a Passo:

1. Com o arquivo _01_convert_img_mp_shp.ipynb_ converti de _.img_ para _.mp_, por meio de _scripts_ em _vba_ que usam o _software **GPSMapEdit**_;
2. Ainda com o mesmo _script_, converto arquivos _.mp_ para _.shp_ (_shapefile_), por meio do _software **GlobalMapper**_.
3. Com o _script merge_all_data.ipynb_, unifiquei todos os _shapefiles_, fiz alguns tratamentos e exportei para geopackage.

<br>

---

### Pré-requisitos

- [GlobalMapper](http://www.bluemarblegeo.com/products/global-mapper.php) instalado;
- [GPSMapEdit](https://www.geopainting.com/) instalado;

<br>

---

### _TODO_

1. ...
2. ...
