# Group Assignment - Data Driven Security

Group Assignment base repository for the Data Driven Security subject of the [CyberSecurity Management Msc](https://www.talent.upc.edu/ing/professionals/presentacio/codi/221101/cybersecurity-management/).

## Project Title

Ransomware en el mundo


### Project Description

A partir de una bbdd actualizada de los distintos tipos de Ransomware registrados en el mundo hasta el día de hoy. Se mostrará el impacto del Ransomware en el mundo.

### Goals

Mostrar en gráficos en mapa los datos obtenidos.

### Data acquisition

Los datos serán obtenidos de la página web siguiente: https://ransomwaretracker.abuse.ch/feeds/csv/

### Cleansing and transformations

Se decidió filtrar las columnas necesarias para el proyecto que son: "Firstseen_UTC", "Threat", "Malware", "Status" y "Country". También cabe destacar que se modificaron los datos de la columna de Firstseen_UTC a un formato de solo fecha.

### Data analysis

Para realizar el análisis se utilizarán como apoyos gráficos de mapas y de barras para poder tener una mejor visión del impacto.

### Results / Conclusions.

Se ha podido observar como el auge más grande de este tipo de ataques sucedió en 2016 donde hay la mayor cantidad de registros, pero también hay que destacar que podrían haber muchos otros casos todavía no registrados en la actualidad. Se puede concluir que los paises donde más se localizan son Estados Unidos y Rusia.