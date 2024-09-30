Þ    9      ä              ¬  \   ­     
       %   .     T     p       =     $   Ò     ÷  >        P     V  l   Ù  &   F     m  #  y       7   ¥  +   Ý     	  L     ?   ì  ¢  ,	  N   Ï
       ¹   5  4   ï  )   $  -   N  "   |  ]     ã   ý  E   á  +   '     S  L   s  ¦   À  P   g  4   ¸  !   í  ,        <  0   E  =   v  *   ´  9   ß  _     ?   y  G   ¹       4     (   Q  4   z     ¯     Ä  ~  Í     L     Ô  !   í  ?        O     h       `     '   û  $   #  Z   H     £  ´   ©  §   ^  K        R  v  Y     Ð  D   Ô  K     §   e  d     T   r  d  Ç  }   ,  -   ª  #  Ø  [   ü  H   X   E   ¡   /   ç      !  ^  §!  W   #  K   ^#  -   ª#  q   Ø#    J$     \%  H   ê%  3   3&  <   g&     ¤&  (   «&  T   Ô&  H   )'  L   r'  `   ¿'  b    (  s   (     ÷(  ;   )  M   M)  S   )  7   ï)     '*   :program:`gdalinfo` program lists various information about a GDAL supported raster dataset. Band NODATA value. Band block size. Band checksum (if computation asked). Band color interpretations. Band data types. Band descriptions. Band min/max values (internally known and possibly computed). Band overview resolutions available. Band pseudo-color tables. Band unit type (i.e.. "meters" or "feet" for elevation bands). C API Can be useful for example when querying a remove GRIB2 dataset that has an index .idx side-car file, together with :option:`-nomd` Corner coordinates in georeferenced, and if possible lat/long based on the full geotransform (but not GCPs). Dataset open option (format specific). Description Display the output in json format. Since GDAL 3.6, this includes key-value pairs useful for building a `STAC item <https://github.com/radiantearth/stac-spec/blob/v1.0.0/item-spec/item-spec.md>`_ , including statistics and histograms if ``-stats`` or ``-hist`` flags are passed, respectively. Example Example of JSON output with ``gdalinfo -json byte.tif`` File wide (including subdatasets) metadata. For corner coordinates formatted as decimal degree instead of the above degree, minute, second, inspect the ``wgs84Extent`` member of gdalinfo -json: Force computation of the actual min/max values for each band in the dataset. Force computation of the checksum for each band in the dataset. Format/driver name to be attempted to open the input file(s). It is generally not necessary to specify it, but it can be used to skip automatic driver detection, when it fails to select the appropriate driver. This option can be repeated several times to specify several candidate drivers. Note that it does not force those drivers to open the dataset. In particular, some drivers have requirements on file extensions. Gives a brief usage message for the generic GDAL commandline options and exit. Ground control points. If the input dataset contains several subdatasets read and display a subdataset with specified ``n`` number (starting from 1). This is an alternative of giving the full subdataset name. List all metadata domains available for the dataset. Lists information about a raster dataset. Only display the first file of the file list. Raster size (in pixels and lines). Read and display image statistics. Force computation if no statistics are stored in an image. Read and display image statistics. Force computation if no statistics are stored in an image. However, they may be computed based on overviews or a subset of all tiles. Useful if you are in a hurry and don't want precise stats. Report a PROJ.4 string corresponding to the file's coordinate system. Report histogram information for all bands. Show this help message and exit Suppress band mask printing. Is implied if :option:`-nonodata` is specified. Suppress ground control points list printing. It may be useful for datasets with huge amount of GCPs, such as L1B AVHRR or HDF4 MODIS which contain thousands of them. Suppress metadata printing. Some datasets may contain a lot of metadata strings. Suppress nodata printing. Implies :option:`-nomask`. Suppress printing of color table. Suppress printing of raster attribute table. Synopsis The coordinate system for the file (in OGC WKT). The following command line parameters can appear in any order The format driver used to access the file. The gdalinfo will report all of the following (if known): The geotransform associated with the file (rotational coefficients are currently not reported). This utility is also callable from C with :cpp:func:`GDALInfo`. WKT format used to display the SRS. Currently the supported values are: ``WKT2_2018`` (deprecated) ``WKT2`` (latest WKT version, currently *WKT2_2019*) ``all`` Report metadata for all domains. ``domain`` Report metadata for the specified domain. adds metadata using: gdalinfo Project-Id-Version: GDAL 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-08-15 10:14+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Yoichi Kayama<yoichi.kayama@gmail.com>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.15.0
 :program:`gdalinfo` ãã­ã°ã©ã ã¯å¤å½©ãªGDALãµãã¼ãã©ã¹ã¿ã¼ãã¼ã¿ã»ããã«ã¤ãã¦ã®æå ±ããªã¹ããã¾ã ãã³ãã®NODATAå¤ã ãã³ããã­ãã¯ãµã¤ãºã ãã³ããã§ãã¯ãµã  (è¨ç®ãè¦æ±ãããå ´å)ã ãã³ãè²ã®è§£éã ãã³ããã¼ã¿ã¿ã¤ã ãã³ãã®èª¬æã ãã³ãã®æå°å¤/æå¤§å¤(åé¨çã«æ¢ç¥ã®ãã¼ã¿ã¾ãã¯è¨ç®ããããã®)ã ãã³ãã®ç¸®å°ç»åã®è§£ååº¦ã ãã³ãçä¼¼ã«ã©ã¼ãã¼ãã« ãã³ãã®åä½ã¿ã¤ã(ä¾. æ¨é«ãã³ãã®å ´å  "meters" ã¾ãã¯  "feet" )ã C API ãã¨ãã° .idx ãµã¤ãã«ã¼ãã¡ã¤ã«ãæã¤ãªã¢ã¼ãGRIB2ãã¼ã¿ã»ãããåãåãããå ´åã«ä¾¿å©ã§ãã:option:`-nomd` ã¨ä¸ç·ã«å©ç¨ãã¾ãã è§ã®åº§æ¨ã¯ã¸ãªãªãã¡ã¬ã³ã¹ãããå¯è½ãªå ´åã¯å®å¨ãªå°çå¤æã«åºã¥ãã çµåº¦/ç·¯åº¦ã (ãããGCPã§ã¯ãªã)è¡¨ç¤ºããã¾ãã ãã¼ã¿ã»ãããªã¼ãã³ãªãã·ã§ã³ (ãã©ã¼ãããåºæ)ã èª¬æ json å½¢å¼ã§åºåãè¡¨ç¤ºãã¾ããGDAL 3.6ä»¥é, `STAC item <https://github.com/radiantearth/stac-spec/blob/v1.0.0/item-spec/item-spec.md>`_  ãçæããããã«ä¾¿å©ãªkey-valueãã¢ãä½æããæ©è½ãå«ã¿ã¾ããããã« ``-stats`` ã¾ãã¯ ``-hist`` ãã©ã°ãæ¸¡ãããå ´åã¯ããããçµ±è¨ã¨ãã¹ãã°ã©ã ãä½æããã¾ãã ä¾ ``gdalinfo -json byte.tif`` ãå©ç¨ãã¦JSONåºåãè¡ã£ãä¾ ãã¡ã¤ã«å¨ä½ (ãµããã¼ã¿ã»ãããå«ã)ã®ã¡ã¿ãã¼ã¿ã ä¸è¨ã®åº¦ãåãç§ã§è¡¨ãããè§ã®åº§æ¨ã10é²æ°ã§è¡¨ãããå ´åã¯ gdalinfo -jsonã®ã¡ã³ãã¼ ``wgs84Extent`` ã«ã¤ãã¦èª¿ã¹ã¦ãã ãã: ãã¼ã¿ã»ããåã®åãã³ãã®æ­£ç¢ºãªæå°å¤/æå¤§å¤ãå¼·å¶çã«è¨ç®ãã¾ãã ãã¼ã¿ã»ããåã®åãã³ãã®ãã§ãã¯ãµã ã®è¨ç®ãè¡ãã¾ãã å¥åãã¡ã¤ã«ãéãããã«è©¦è¡ãã Format/driver åã éå¸¸ã¯æå®ããå¿è¦ã¯ããã¾ããããé©åãªãã©ã¤ãã¼ãé¸æã§ããªãã£ãå ´åã«èªåãã©ã¤ãã¼æ¤åºãã¹ã­ããããããã«ä½¿ç¨ã§ãã¾ãã ãã®ãªãã·ã§ã³ã¯åè£ã¨ãªããã©ã¤ãã¼ãè¤æ°åæå®ããããã«è¤æ°åç¹°ãè¿ããã¨ãã§ãã¾ãããããã®ãã©ã¤ãã¼ã«ãã¼ã¿ã»ãããéãããã«å¼·å¶ãããã®ã§ãªããã¨ã«æ³¨æãã¦ä¸ãããç¹ã«ä¸é¨ã®ãã©ã¤ãã¼ã«ã¯ãã¡ã¤ã«æ¡å¼µå­ã«é¢ããè¦ä»¶ãããã¾ãã  ä¸è¬çãªGDALã³ãã³ãã©ã¤ã³ãªãã·ã§ã³ã®ç°¡åãªå©ç¨æ¹æ³ã¡ãã»ã¼ã¸ãè¡¨ç¤ºãã¦ çµäºãã¾ãã ã°ã©ã³ãã³ã³ãã­ã¼ã«ãã¤ã³ãã å¥åãã¼ã¿ã»ããã«å¤ãã®ãµããã¼ã¿ã»ãããå«ã¾ããå ´åã¯ æå®ãããçªå· ``n``  (ï¼ããå§ã¾ã)ã®ãµããã¼ã¿ã»ãããèª­ãã§è¡¨ç¤ºãã¾ãã ããã¯å®å¨ãªãµãã»ããåç§°ãæå®ããæ¹æ³ã®ä»£æ¿ã¨ãã¦å©ç¨ã§ãã¾ãã ãã¼ã¿ã»ããã§å©ç¨å¯è½ãªã¡ã¿ãã¼ã¿ ãã¡ã¤ã³ãä¸è¦§è¡¨ç¤ºãã¾ãã ã©ã¹ã¿ã¼ãã¼ã¿ã»ããã«é¢ããæå ±ããªã¹ããã¾ãã ãã¡ã¤ã«ãªã¹ãã®åé ­ã®ãã¡ã¤ã«ã®ã¿è¡¨ç¤ºãã¾ãã ã©ã¹ã¿ã¼ãµã¤ãº(ãã¯ã»ã«æ°ã¨è¡æ°) ç»åã®çµ±è¨æå ±ãèª­ã¿åã£ã¦è¡¨ç¤ºãã¾ãã çµ±è¨æå ±ãç»åã«ä¿å­ããã¦ããªãå ´åã¯ è¨ç®ãå¼·å¶ãã¾ãã ç»åã®çµ±è¨æå ±ãèª­ã¿åã£ã¦è¡¨ç¤ºãã¾ãã çµ±è¨æå ±ãç»åã«ä¿å­ããã¦ããªãå ´åã¯ è¨ç®ãå¼·å¶ãã¾ãã ãã ããªã¼ãã¼ãã¥ã¼ãå¨ã¿ã¤ã«ã®ãµãã»ãããå©ç¨ãã¦è¨ç®ã è¡ããããã¨ãããã¾ãã æ¥ãã§ãã¦æ­£ç¢ºãªçµ±è¨ãå¿ãããå¿è¦ãªãå ´åã¯ä¾¿å©ã§ãã æå®ãã¡ã¤ã«ã®åº§æ¨ç³»ã«å¯¾å¿ããPROJ.4æå­åãã¬ãã¼ããã¾ãã ãã¹ã¦ã®ãã³ãã®ãã¹ãã°ã©ã æå ±ãã¬ãã¼ããã¾ãã ãã®ãã«ããè¡¨ç¤ºãã¦çµäºãã¾ã ãã³ããã¹ã¯ã®åºåãæå¶ãã¾ãã:option:`-nonodata` ãæå®ãããå ´åã«å«ã¾ãã¾ãã ã°ã©ã³ãã³ã³ãã­ã¼ã«ãã¤ã³ããªã¹ãã®åºåãæå¶ãã¾ãããã®æ©è½ã¯è¨å¤§ãª GCPãä¿æãããã¼ã¿ã»ãã, ä¾ãã° L1B AVHRR ã HDF4 MODIS ã®ãããª æ°åã®GCPãä¿æãããã¼ã¿ã»ããã«å©ç¨ããæã«ä¾¿å©ã§ãã ã¡ã¿ãã¼ã¿ã®åºåãæå¶ãã¾ããããã¤ãã®ãã¼ã¿ã»ããã¯å¤æ°ã®ã¡ã¿ãã¼ã¿æå­åãä¿æãã¦ãã¾ãã NODATAã®åºåãæå¶ãã¾ãã:option:`-nomask` ãå«ã¿ã¾ãã ã«ã©ã¼ãã¼ãã«ã®åºåãæå¶ãã¾ãã ã©ã¹ã¿ã¼å±æ§ãã¼ãã«ã®åºåãæå¶ãã¾ãã æ¦è¦ ãã¡ã¤ã«ã®åº§æ¨ç³» (OGC WKTå½¢å¼) ä»¥ä¸ã®ã³ãã³ãã©ã¤ã³ãã©ã¡ã¼ã¿ãä»»æã®é åºã§å©ç¨ã§ãã¾ã ãã¡ã¤ã«ã¢ã¯ã»ã¹ã«å©ç¨ãããã©ã¼ããããã©ã¤ãã¼ gdalinfo ã¯ä»¥ä¸ã®ãã¹ã¦ã®æå ±ãè¡¨ç¤ºãã¾ã (æ¢ç¥ã®å ´å): ãã¡ã¤ã«ã«é¢é£ã¤ããããå°çå¤æ(åè»¢ä¿æ°ã¯ ç¾å¨å ±åããã¾ãã)ã ãã®ã¦ã¼ãã£ãªãã£ã¯Cè¨èªããå¼ã³åºããã¨ãã§ãã¾ã :cpp:func:`GDALInfo`. SRSãè¡¨ç¤ºããããã«ä½¿ç¨ãããWKTå½¢å¼ãç¾å¨ãµãã¼ãããã¦ããå¤ã¯æ¬¡ã®ã¨ããã§ã: ``WKT2_2018`` (éæ¨å¥¨) ``WKT2`` (WKT ã®ææ°ãã¼ã¸ã§ã³, ç¾å¨ *WKT2_2019*) ``all`` ãã¹ã¦ã®ãã¡ã¤ã³ã®ã¡ã¿ãã¼ã¿ãã¬ãã¼ããã¾ãã ``domain`` æå®ããããã¡ã¤ã³ã®ã¡ã¿ãã¼ã¿ãã¬ãã¼ããã¾ãã ä»¥ä¸ãå©ç¨ãã¦ã¡ã¿ãã¼ã¿ãè¿½å ãã¾ã: gdalinfo 