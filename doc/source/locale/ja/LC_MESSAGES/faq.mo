Þ    #      4              L  >   M  8       Å     Î  *   Ò  c   ý  &   a       M     b   ë     N  !   d  0        ·    =  0   \  ¿     «  M     ù	     
     !
     ;
     [
  _   k
  *   Ë
     ö
          )     B     Z  ,   z  "   §  Õ   Ê        q  :  I   ¬  q  ö     h     o  P   s     Ä  `   Q  7   ²     ê     t  &   õ  Q     X   n  ­   Ç  @  u  S   ¶  Þ   
    é     ì            "   7     Z  j   m  S   Ø     ,     I     g       <     K   Ø  5   $  :  Z  â      Build requirements are described in :ref:`build_requirements`. Common Portability Library. Think of it as GDAL internal cross-platform standard library. Back in the early days of GDAL development, when cross-platform development as well as compatibility and standard conformance of compilers was a challenge (or PITA), CPL proved necessary for smooth portability of GDAL/OGR. Contents FAQ GDAL - Geospatial Data Abstraction Library GDAL/OGR must be compiled with a C++17 capable compiler since GDAL 3.9 (C++11 in previous versions) How do I add support for a new format? How do I cite GDAL ? I have a question that's not answered here. Where can I get more information? In late 1998, Frank Warmerdam started to work as independent professional on the GDAL/OGR library. Is GDAL thread-safe ? Is GDAL/OGR proprietary software? Is there a graphical user interface to GDAL/OGR? It is sometimes pronounced "goo-doll" (a bit like goo-gle), while others pronounce it "gee-doll," and others pronounce it "gee-dall." Keep in mind, the quality of the answer you get does bear some relation to the quality of the question. If you need more detailed explanation of this, you can find it in essay `How To Ask Questions The Smart Way <http://www.catb.org/~esr/faqs/smart-questions.html>`_ by Eric S. Raymond. No, GDAL/OGR is a Free and Open Source Software. OGR used to be a separate vector IO library inspired by OpenGIS Simple Features which was separated from GDAL. With the GDAL 2.0 release, the GDAL and OGR components were integrated together. OGR used to stand for OpenGIS Simple Features Reference Implementation. However, since OGR is not fully compliant with the OpenGIS Simple Feature specification and is not approved as a reference implementation of the spec the name was changed to OGR Simple Features Library. The only meaning of OGR in this name is historical. OGR is also the prefix used everywhere in the source of the library for class names, filenames, etc. See :ref:`community` See :ref:`license` See :ref:`multithreading` See :ref:`software_using_gdal`: See `CITATION`_ To some extent this is now covered by the :ref:`raster_driver_tut` and :ref:`vector_driver_tut` What compiler can I use to build GDAL/OGR? What does CPL stand for? What does GDAL stand for? What does OGR stand for? What is this OGR stuff? What license does GDAL/OGR use? What operating systems does GDAL-OGR run on? When was the GDAL project started? You can use GDAL/OGR on all modern flavors of Unix: Linux, FreeBSD, Mac OS X; all supported versions of Microsoft Windows; mobile environments (Android and iOS). Both 32-bit and 64-bit architectures are supported. `Listen <https://soundcloud.com/danabauer/how-do-you-pronounce-gdal#t=00:02:58>`__ how Frank Warmerdam prounounces it and the history behind the acronym. Project-Id-Version: GDAL 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-07-01 03:46+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.15.0
 ãã«ãè¦ä»¶ã¯ :ref:`build_requirements` ã«è¨è¼ããã¦ãã¾ã. Common Portability Library. ããã¯GDALã®åé¨ã®ã¯ã­ã¹ãã©ãããã©ã¼ã æ¨æºã©ã¤ãã©ãªã¨èãã¦ãã ãã.GDALéçºã®åæã«ã¯,ã¯ã­ã¹ãã©ãããã©ã¼ã éçºãã³ã³ãã¤ã©ã®äºææ§ã¨æ¨æºæºæ ãèª²é¡ã§ãã£ããã,CPLã¯GDAL/OGRã®ã¹ã ã¼ãºãªç§»æ¤æ§ã®ããã«å¿è¦ã§ãããã¨ãè¨¼æããã¾ãã. ç®æ¬¡ FAQ GDAL - ç©ºéãã¼ã¿æ½è±¡ã©ã¤ãã©ãª(Geospatial Data Abstraction Library) GDAL/OGRã¯GDAL 3.9 ä»¥éã¯C++17å¯¾å¿ã®ã³ã³ãã¤ã©ã§ã³ã³ãã¤ã«ããå¿è¦ãããã¾ã(ä»¥åã®ãã¼ã¸ã§ã³ã§ã¯C++11) æ°ãããã©ã¼ãããã®ãµãã¼ããè¿½å ããã«ã¯ã©ãããã°ããã§ããï¼ GDALãã©ã®ããã«å¼ç¨ããã°ããã§ããï¼ ããã§åç­ãããã¦ããªãè³ªåãããã¾ãã ãã®ãããªå ´åç§ã¯ã©ãã§æå ±ãå¾ããã¨ãã§ãã¾ãã? 1998å¹´å¾å, Frank Warmerdam ã¯ç¬ç«ããå°éå®¶ã¨ãã¦GDAL/OGR libraryã©ã¤ãã©ãªã®ä»äºãéå§ãã¾ããã GDALã¯ã¹ã¬ããã»ã¼ãã§ãã? GDAL/OGRã¯ãã­ãã©ã¤ã¨ã¿ãªã©ã¤ã»ã³ã¹ã®ã½ããã¦ã§ã¢ã§ãã? GDL/OGRã«ã¯ã°ã©ãã£ã«ã«ã¦ã¼ã¶ã¼ã¤ã³ã¿ã¼ãã§ã¼ã¹ãããã¾ããï¼ ããã¯æã "goo-doll" (å°ã goo-gleã«ä¼¼ã¦ã¾ã), ã¨çºé³ããã¾ã, ã¾ã ä»ã®äººå ´å "gee-doll," ã "gee-dall." ã¨çºé³ããããã¨ãããã¾ã è³ªåã®è³ªã«ã¯åç­ã®è³ªãå¤å°é¢ä¿ãã¦ãããã¨ãå¿ã«çãã¦ããã¦ãã ãã. ããã«ã¤ãã¦ããè©³ããèª¬æãå¿è¦ãªå ´åã¯,Eric S. Raymondã«ããã¨ãã»ã¤`How To Ask Questions The Smart Way <http://www.catb.org/~esr/faqs/smart-questions.html>`_ ãåç§ãã¦ãã ãã. ããã, GDAL/OGRã¯ããªã¼ãã¤ãªã¼ãã³ã½ã¼ã¹ã½ããã¦ã§ã¢ã§ã. OGR ã¯ OpenGIS Simple Features ã«ã¤ã³ã¹ãã¤ã¢ããããã¯ã¿IOã©ã¤ãã©ãªã§GDALã¨ã¯å¥ã®ãã®ã§ãããGDAL 2.0 ã®ãªãªã¼ã¹æã«ãGDAL ã¨ OGR ã®ã³ã³ãã¼ãã³ãã¯çµ±åããã¾ããã OGR ã¯ OpenGIS Simple Features Reference Implementationã®ç¥ç§°ã§ããã ãã ãOGR ã¯OpenGIS Simple Feature specificationã«å®å¨ã«æºæ ãã¦ãããã  ä»æ§ã®å®è£ã¨ãã¦ã¯æ¿èªããã¦ããªããããã®ååã¯ OGR Simple Features Libraryã«å¤æ´ãã¦ãã¾ããããã®ååã«ãããOGR ã¯æ­´å²çãªæå³ããããã¾ãããã¾ã OGRã¯ã©ã¤ãã©ãªã®ã½ã¼ã¹ã®ããããå ´æã§ã¯ã©ã¹å,ãã¡ã¤ã«åç­ã«å©ç¨ãããæ¥é ­èªã§ãããã¾ãã åç§ :ref:`community` åç§ :ref:`license` åç§ :ref:`multithreading` åç§ :ref:`software_using_gdal`: åç§ `CITATION`_ ç¾å¨ããç¨åº¦ã¯ :ref:`raster_driver_tut` ã¨ :ref:`vector_driver_tut` ã§èª¬æããã¦ãã¾ãã GDAL/OGRããã«ãããããã«ã©ã®ã³ã³ãã¤ã©ãä½¿ç¨ã§ãã¾ããï¼ CPLã¨ã¯ä½ã®ç¥ã§ãã? GDALã¨ã¯ä½ã®ç¥ã§ãã? OGRã¨ã¯ä½ã®ç¥ã§ãã? OGRã¨ã¯ä½ã§ãã? GDAL/OGRã¯ã©ã®ã©ã¤ã»ã³ã¹ãä½¿ç¨ãã¦ãã¾ãã? GDAL-OGRã¯ã©ã®ãªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ã§åä½ãã¾ãã? GDALãã­ã¸ã§ã¯ãã¯ãã¤å§ã¾ãã¾ããã? GDAL/OGRã¯ãã¹ã¦ã®ç¾ä»£çãªUnixã®ããªã¨ã¼ã·ã§ã³: Linux, FreeBSD, Mac OS X; ãã¹ã¦ã®ãµãã¼ãããã¦ããMicrosoft Windowsã®ãã¼ã¸ã§ã³; ã¢ãã¤ã«ç°å¢(Androidã¨iOS)ã§ä½¿ç¨ã§ãã¾ã.32ãããã¨64ãããã®ã¢ã¼ã­ãã¯ãã£ã®ä¸¡æ¹ããµãã¼ãããã¦ãã¾ã. `ããã <https://soundcloud.com/danabauer/how-do-you-pronounce-gdal#t=00:02:58>`__ èãã¦ä¸ããã Frank Warmerdam ããããã©ãçºé³ãããã¨ GDALã®é ­å­èªã®æ­´å²ã«ã¤ãã¦èããã¨ãã§ãã¾ã. 