��          \               �      �   Z   �     �          $  �   -  ]       c  1  �  v        �  4   �     �    �  �   �   :program:`gdal_sieve` removes raster polygons smaller than a provided threshold size (in pixels) and replaces them with the pixel value of the largest neighbour polygon. The result can be written back to the existing raster band, or copied into a new file. Additional details on the algorithm are available in the :cpp:func:`GDALSieveFilter` docs. Description Removes small raster polygons. Synopsis The input dataset is read as integer data which means that floating point values are rounded to integers. Re-scaling source data may be necessary in some cases (e.g. 32-bit floating point data with min=0 and max=1). gdal_retile is a Python utility, and is only available if GDAL Python bindings are available. Project-Id-Version: GDAL 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-07-01 04:49+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Yoichi Kayama <yoichi.kayama@gmail.com>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.15.0
 :program:`gdal_sieve` は,指定されたしきい値サイズ(ピクセル単位)より小さいラスターポリゴンを削除し,最大の隣接ポリゴンのピクセル値で置き換えます.結果は既存のラスターバンドに書き戻すか,新しいファイルにコピーできます. アルゴリズムの詳細については, :cpp:func:`GDALSieveFilter` ドキュメントを参照してください. 説明 小さいラスターポリゴンを削除します. 概要 入力データセットは整数データとして読み込まれるため,浮動小数点値は整数に丸められます.ソースデータの再スケーリングが必要な場合があります(例: min=0 および max=1 の 32 ビット浮動小数点データ). gdal_sieve は Python ユーティリティであり, GDAL Python バインディングが利用可能な場合のみ利用できます. 