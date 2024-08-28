Þ                        ì  x   í  b   f     É  m   â  '   P  *   x     £     ¬  '   È  ^   ð     O  	   X  h   b  *  Ë     ö  6        :  p   ×     H     Z    u  I  	  F   Ñ      æ  3  2       M     `    ò  ¦   r  g          w   ¡  /     .   I     x  "     ?   ¢     â     q     v  ~   {  æ  ú     á  U   î  ¸   D  ´   ý     ²     Å    à     ÿ  I    !  R  j!  D  ½"    %     ¡&  Å   ´&   (Note is also OK to say /vsizip/vsicurl/... with a single slash. (But when writing documentation please still use two.)) .kmz, .ods and .xlsx extensions are also detected as valid extensions for zip-compatible archives. /vsizip/ (.zip archives) /vsizip/ is a file handler that allows reading ZIP archives on-the-fly without decompressing them beforehand. A notable exception is the HDF4 driver. Addition of a new file to an existing zip: Chaining Creation of a new zip file: Drivers supporting virtual file systems Each special file system has a prefix, and the general syntax to name a file is /vsiPREFIX/... Example: Examples: GDAL Virtual File Systems (compressed, network hosted, etc...): /vsimem, /vsizip, /vsitar, /vsicurl, ... GDAL can access files located on "standard" file systems, i.e. in the / hierarchy on Unix-like systems or in C:\, D:\, etc... drives on Windows. But most GDAL raster and vector drivers use a GDAL-specific abstraction to access files. This makes it possible to access less standard types of files, such as in-memory files, compressed files (.zip, .gz, .tar, .tar.gz archives), encrypted files, standard input and output (STDIN, STDOUT), files stored on network (either publicly accessible, or in private buckets of commercial cloud storage services), etc. Introduction It is possible to chain multiple file system handlers. Note: in the particular case where the .zip file contains a single file located at its root, just mentioning :file:`/vsizip/path/to/the/file.zip` will work. Read and write operations cannot be interleaved. The new zip must be closed before being re-opened in read mode. Read capabilities SOZip (Seek-Optimized ZIP) Starting with GDAL 2.2, an alternate syntax is available so as to enable chaining and not being dependent on .zip extension, e.g.: ``/vsizip/{/path/to/the/archive}/path/inside/the/zip/file``. Note that :file:`/path/to/the/archive` may also itself use this alternate syntax. Starting with GDAL 2.4, the :config:`GDAL_NUM_THREADS` configuration option can be set to an integer or ``ALL_CPUS`` to enable multi-threaded compression of a single file. This is similar to the pigz utility in independent mode. By default the input stream is split into 1 MB chunks (the chunk size can be tuned with the :config:`CPL_VSIL_DEFLATE_CHUNK_SIZE` configuration option, with values like "x K" or "x M"), and each chunk is independently compressed (and terminated by a nine byte marker 0x00 0x00 0xFF 0xFF 0x00 0x00 0x00 0xFF 0xFF, signaling a full flush of the stream and dictionary, enabling potential independent decoding of each chunk). This slightly reduces the compression rate, so very small chunk sizes should be avoided. Starting with GDAL 3.7, this technique is reused to generate .zip files following :ref:`sozip_intro`. The following configuration options are specific to the /zip/ handler: To point to a file inside a zip file, the filename must be of the form :file:`/vsizip/path/to/the/file.zip/path/inside/the/zip/file`, where :file:`path/to/the/file.zip` is relative or absolute and :file:`path/inside/the/zip/file` is the relative path to the file inside the archive. To use the .zip as a directory, you can use :file:`/vsizip/path/to/the/file.zip` or :file:`/vsizip/path/to/the/file.zip/subdir`. Directory listing is available with :cpp:func:`VSIReadDir`. A :cpp:func:`VSIStatL` ("/vsizip/...") call will return the uncompressed size of the file. Directories inside the ZIP file can be distinguished from regular files with the VSI_ISDIR(stat.st_mode) macro as for regular file systems. Getting directory listing and file statistics are fast operations. Virtual file systems can only be used with GDAL or OGR drivers supporting the "large file API", which is now the vast majority of file based drivers. The full list of these formats can be obtained by looking at the driver marked with 'v' when running either ``gdalinfo --formats`` or ``ogrinfo --formats``. Write capabilities Write capabilities are also available. They allow creating a new zip file and adding new files to an already existing (or just created) zip file. Project-Id-Version: GDAL 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-08-15 10:14+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Yoichi Kayama <yoichi.kayama@gmail.com>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.15.0
 (/vsizip/vsicurl/... ã¨ä¸ã¤ã®ã¹ã©ãã·ã¥ã§æ¸ãã¦ãããã§ã. (ãã ã,ãã­ã¥ã¡ã³ããæ¸ãéã¯å¼ãç¶ãäºã¤ä½¿ç¨ãã¦ãã ãã.)) .kmz, .ods, .xlsx æ¡å¼µå­ãzipäºæã¢ã¼ã«ã¤ãã®æå¹ãªæ¡å¼µå­ã¨ãã¦æ¤åºããã¾ã. /vsizip/ (.zip ã¢ã¼ã«ã¤ã) /vsizip/ ã¯,äºåã«è§£åããã«ZIPã¢ã¼ã«ã¤ããèª­ã¿åããã¨ãã§ãããã¡ã¤ã«ãã³ãã©ã§ã. æ³¨ç®ãã¹ãä¾å¤ã¯HDF4ãã©ã¤ãã§ã. æ¢å­ã®zipã«æ°ãããã¡ã¤ã«ãè¿½å : é£é æ°ããzipãã¡ã¤ã«ã®ä½æ: ä»®æ³ãã¡ã¤ã«ã·ã¹ãã ããµãã¼ããããã©ã¤ã åç¹æ®ãã¡ã¤ã«ã·ã¹ãã ã«ã¯ãã¬ãã£ãã¯ã¹ããã,ãã¡ã¤ã«ãååä»ããä¸è¬çãªæ§æã¯/vsiPREFIX/...ã§ã. ä¾: ä¾: GDALä»®æ³ãã¡ã¤ã«ã·ã¹ãã (å§ç¸®ããããã¯ã¼ã¯ãã¹ãããªã©...): /vsimem, /vsizip, /vsitar, /vsicurl, ... GDALã¯"æ¨æº"ãã¡ã¤ã«ã·ã¹ãã ä¸ã«ãããã¡ã¤ã«ã«ã¢ã¯ã»ã¹ã§ãã¾ã.ã¤ã¾ã,Unixç³»ã·ã¹ãã ã® / éå±¤ãWindowsã® C:\, D:\ ãªã©ã®ãã©ã¤ãã§ã.ããã,ã»ã¨ãã©ã®GDALã©ã¹ã¿ã¼ããã³ãã¯ã¿ã¼ãã©ã¤ãã¯GDALåºæã®æ½è±¡åãä½¿ç¨ãã¦ãã¡ã¤ã«ã«ã¢ã¯ã»ã¹ãã¾ã.ããã«ãã,ã¡ã¢ãªåãã¡ã¤ã«,å§ç¸®ãã¡ã¤ã«(.zip, .gz, .tar, .tar.gzã¢ã¼ã«ã¤ã),æå·åãã¡ã¤ã«,æ¨æºå¥åããã³åºå(STDIN, STDOUT),ãããã¯ã¼ã¯ä¸ã®ãã¡ã¤ã«(å¬éã¢ã¯ã»ã¹å¯è½ãªãã®,ã¾ãã¯åç¨ã¯ã©ã¦ãã¹ãã¬ã¼ã¸ãµã¼ãã¹ã®ãã©ã¤ãã¼ããã±ããåã®ãã®)ãªã©,æ¨æºã§ãªãç¨®é¡ã®ãã¡ã¤ã«ã«ã¢ã¯ã»ã¹ã§ãã¾ã. ã¯ããã« è¤æ°ã®ãã¡ã¤ã«ã·ã¹ãã ãã³ãã©ãé£éããããã¨ãã§ãã¾ã. æ³¨: .zipãã¡ã¤ã«ããã®ã«ã¼ãã«ããåä¸ã®ãã¡ã¤ã«ãå«ãç¹å®ã®å ´åã«ã¯, :file:`/vsizip/path/to/the/file.zip` ã¨ã ãè¨è¿°ããã ãã§åä½ãã¾ã. èª­ã¿åãããã³æ¸ãè¾¼ã¿æä½ãäº¤äºã«è¡ããã¨ã¯ã§ãã¾ãã.æ°ããzipã¯,èª­ã¿åãã¢ã¼ãã§åãªã¼ãã³ããåã«éããå¿è¦ãããã¾ã. èª­ã¿åãæ©è½ SOZip (Seek-Optimized ZIP) GDAL 2.2ä»¥é,é£éãå¯è½ã«ã,.zipæ¡å¼µå­ã«ä¾å­ããªãããã«ããããã®ä»£æ¿æ§æãå©ç¨å¯è½ã§ã.ä¾ãã°, ``/vsizip/{/path/to/the/archive}/path/inside/the/zip/file``. :file:`/path/to/the/archive`  ã¯ãã®ä»£æ¿æ§æãä½¿ç¨ãããã¨ãã§ãã¾ã. GDAL 2.4ä»¥é, :config:`GDAL_NUM_THREADS` è¨­å®ãªãã·ã§ã³ãæ´æ°ã¾ãã¯ ``ALL_CPUS`` ã«è¨­å®ãããã¨ã§,åä¸ãã¡ã¤ã«ã®ãã«ãã¹ã¬ããå§ç¸®ãæå¹ã«ãããã¨ãã§ãã¾ã.ããã¯pigzã¦ã¼ãã£ãªãã£ã®ç¬ç«ã¢ã¼ãã«é¡ä¼¼ãã¦ãã¾ã.ããã©ã«ãã§ã¯,å¥åã¹ããªã¼ã ã¯1MBã®ãã£ã³ã¯ã«åå²ããã¾ã(ãã£ã³ã¯ãµã¤ãºã¯ :config:`CPL_VSIL_DEFLATE_CHUNK_SIZE` è¨­å®ãªãã·ã§ã³ã§èª¿æ´ã§ã, "x K" ã¾ãã¯ "x M" ã®ãããªå¤ãä½¿ç¨ã§ãã¾ã),ããã¦åãã£ã³ã¯ã¯ç¬ç«ãã¦å§ç¸®ããã¾ã(ããã¦9ãã¤ãã®ãã¼ã«ã¼ 0x00 0x00 0xFF 0xFF 0x00 0x00 0x00 0xFF 0xFF ã§çµäºã,ã¹ããªã¼ã ã¨è¾æ¸ã®å®å¨ãªãã©ãã·ã¥ãç¤ºã,åãã£ã³ã¯ã®ç¬ç«ãããã³ã¼ããå¯è½ã«ãã¾ã).ããã¯å§ç¸®çããããã«ä½ä¸ããããã,éå¸¸ã«å°ããªãã£ã³ã¯ãµã¤ãºã¯é¿ããã¹ãã§ã. GDAL 3.7ä»¥é,ãã®æè¡ã¯ :ref:`sozip_intro` ã«å¾ã£ã¦ .zip ãã¡ã¤ã«ãçæããããã«åå©ç¨ããã¾ã. /zip/ ãã³ãã©ã«åºæã®æ¬¡ã®è¨­å®ãªãã·ã§ã³ãããã¾ã: ZIPãã¡ã¤ã«åã®ãã¡ã¤ã«ãæãã«ã¯,ãã¡ã¤ã«åã¯ :file:`/vsizip/path/to/the/file.zip/path/inside/the/zip/file` ã®å½¢å¼ã§ããå¿è¦ãããã¾ã.ããã§ :file:`path/to/the/file.zip` ã¯ç¸å¯¾ã¾ãã¯çµ¶å¯¾ã§ãã, :file:`path/inside/the/zip/file` ã¯ã¢ã¼ã«ã¤ãåã®ãã¡ã¤ã«ã¸ã®ç¸å¯¾ãã¹ã§ã. .zipããã£ã¬ã¯ããªã¨ãã¦ä½¿ç¨ããã«ã¯, :file:`/vsizip/path/to/the/file.zip` ã¾ãã¯ :file:`/vsizip/path/to/the/file.zip/subdir` ãä½¿ç¨ã§ãã¾ã.ãã£ã¬ã¯ããªãªã¹ãã¯ :cpp:func:`VSIReadDir` ã§å©ç¨ã§ãã¾ã. :cpp:func:`VSIStatL` ("/vsizip/...") å¼ã³åºãã¯ãã¡ã¤ã«ã®è§£åããããµã¤ãºãè¿ãã¾ã. ZIPãã¡ã¤ã«åã®ãã£ã¬ã¯ããªã¯éå¸¸ã®ãã¡ã¤ã«ã·ã¹ãã ã¨åæ§ã«,éå¸¸ã®ãã¡ã¤ã«ã¨åºå¥ãããã¨ãã§ãã¾ã.ãã£ã¬ã¯ããªãªã¹ãã¨ãã¡ã¤ã«çµ±è¨ã®åå¾ã¯é«éãªæä½ã§ã. ä»®æ³ãã¡ã¤ã«ã·ã¹ãã ã¯,ç¾å¨ã®ã»ã¨ãã©ã®ãã¡ã¤ã«ãã¼ã¹ã®ãã©ã¤ãã§ãã"å¤§è¦æ¨¡ãã¡ã¤ã«API"ããµãã¼ãããGDALã¾ãã¯OGRãã©ã¤ãã§ã®ã¿ä½¿ç¨ã§ãã¾ã.ãããã®ãã©ã¼ãããã®å®å¨ãªãªã¹ãã¯, ``gdalinfo --formats`` ã¾ãã¯ ``ogrinfo --formats`` ãå®è¡ããã¨ãã«'v'ã§ãã¼ã¯ããããã©ã¤ããè¦ããã¨ã§åå¾ã§ãã¾ã. æ¸ãè¾¼ã¿æ©è½ æ¸ãè¾¼ã¿æ©è½ãå©ç¨ã§ãã¾ã.æ°ããzipãã¡ã¤ã«ãä½æã,æ¢å­ã®(ã¾ãã¯ä½æããã°ããã®)zipãã¡ã¤ã«ã«æ°ãããã¡ã¤ã«ãè¿½å ãããã¨ãã§ãã¾ã. 