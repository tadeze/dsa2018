# dsa 2018

<h2>Introduction</h2>

<img src=images/allafrica.png width=75%>

Stations located in Kenya. 

<img src=images/target-stations.png width=75%>

<h3>The TAHMO stations</h3>

<h3>Dataset</h3>

The data is a time series of weather sensor readings, consisting of different physical variables on a regular grid on the Earth, indexed by lon(gitude) and lat(itude) coordinates. The variables we have made available are: 
<ul>
<li>prec --- Percipitation. 
<li>tair --- air temperature. 
<li>relh --- relative humidity. 
<li>wspd --- wind speed. 
<li>wgst --- wind gust. 
<li>pres --- surface pressure.
<li>srad --- Solar radiation. 
</ul>
 
The fields are recorded every 5 minutes for two years from 2016-2017. The dataset is observation averaged on hour scale. 


### Station description

 - from: Station id
 - to: Station id 
 - distance (km): distance between stations.  
 - elevation (m) : Elevation difference between from & to station. 

<h3>The prediction task</h3>
 - Predict whether it rains or not.
 