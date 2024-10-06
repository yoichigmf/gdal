��          �               �  �   �  P  }  ,   �     �  N     x   V  #   �  �   �  D   �  �     �   �  �   6          #  5   C     y  Z   �  *   �  +   	  D   4	    y	  ^  �
  �  X  r   �  q  V  .  �    �  8        F  v   M  �   �  <   z  1  �  2   �  �     �   �    �  1   �  <     X   J     �     �  1   *  >   \  g   �  A    �  E    �  r   #   Adds a mask band to the output file, or adds a mask band to the input file if it does not already have one and no output file is specified. The mask band is set to 0 in the image collar and to 255 elsewhere. Adds an alpha band if the output file is specified and the input file has 3 bands, or sets the alpha band of the output file if it is specified and the input file has 4 bands, or sets the alpha band of the input file if it has 4 bands and no output file is specified. The alpha band is set to 0 in the image collar and to 255 elsewhere. Convert nearly black/white borders to black. Description Gives a brief usage message for the generic GDAL commandline options and exit. If the output file is omitted, the processed results will be written back to the input file - which must support update. Only valid when creating a new file Passes a creation option to the output format driver.  Multiple :option:`-co` options may be listed. See :ref:`raster_drivers` format specific documentation for legal creation options for each format. Search for nearly white (255) pixels instead of nearly black pixels. Search for pixels near the specified color. May be specified multiple times. When -color is specified, the pixels that are considered as the collar are set to 0. Select how far from black, white or custom colors the pixel values can be and still considered near black, white or custom color.  Defaults to 15. Select the output format. Starting with GDAL 2.3, if not specified, the format is guessed from the extension (previously was ERDAS Imagine .img). Use the short format name (GTiff for GeoTIFF for example). Selects the algorithm to apply. Show this help message and exit Suppress progress monitor and other non-error output. Synopsis The input file.  Any GDAL supported format, any number of bands, normally 8bit Byte bands. The name of the output file to be created. The processing is all done in 8bit (Bytes). This utility is also callable from C with :cpp:func:`GDALNearblack`. This utility will scan an image and try to set all pixels that are nearly or exactly black, white or one or more custom colors around the collar to black or white. This is often used to "fix up" lossy compressed air photos so that color pixels can be treated as transparent when mosaicing. The output format must use lossless compression if either alpha band or mask band is not set. ``floodfill`` (added in GDAL 3.8) uses the `Flood Fill <https://en.wikipedia.org/wiki/Flood_fill#Span_filling>`_ algorithm and will work with concave areas. It requires creating a temporary dataset and is slower than ``twopasses``. When a non-zero value for :option:`-nb` is used, ``twopasses`` is actually called as an initial step of ``floodfill``. ``twopasses`` uses a top-to-bottom pass followed by a bottom-to-top pass. This is the only algorithm implemented before GDAL 3.8. It may miss with concave areas. The algorithm processes the image one scanline at a time.  A scan "in" is done from either end setting pixels to black or white until at least "non_black_pixels" pixels that are more than "dist" gray levels away from black, white or custom colors have been encountered at which point the scan stops.  The nearly black, white or custom color pixels are set to black or white. The algorithm also scans from top to bottom and from bottom to top to identify indentations in the top or bottom. number of consecutive non-black pixels that can be encountered before the giving up search inwards. Defaults to 2. Project-Id-Version: GDAL 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-07-01 04:49+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.15.0
 出力ファイルにマスクバンドを追加します.または,入力ファイルにマスクバンドを追加します. または,入力ファイルにマスクバンドを追加します. マスクバンドは画像のカラー部分に 0 を設定し,それ以外は 255 に設定されます. 出力ファイルが指定されており,入力ファイルが 3 バンドの場合,アルファバンドを追加します. または,出力ファイルが指定されており,入力ファイルが 4 バンドの場合,アルファバンドを設定します. または,入力ファイルが 4 バンドで出力ファイルが指定されていない場合,入力ファイルのアルファバンドを設定します. アルファバンドは画像のカラー部分に 0 を設定し,それ以外は 255 に設定されます. 黒/白に近い境界色部分を黒に変換します. 説明 一般的な GDAL コマンドラインオプションの簡単な使用メッセージを表示して終了します. 出力ファイルが省略された場合,処理された結果は入力ファイルに書き戻されます. 入力ファイルは更新をサポートする必要があります. 新しいファイルを作成する場合のみ有効です 出力フォーマットドライバに作成オプションを渡します. 複数の :option:`-co` オプションをリストアップできます. 各フォーマットの法的な作成オプションについては, :ref:`raster_drivers` 形式固有のドキュメントを参照してください. ほぼ白 (255) のピクセルを検索します. 指定されたカラーに近いピクセルを検索します. 複数回指定できます. -color が指定されている場合, カラーとして考慮されるピクセルは 0 に設定されます. ピクセル値が黒, 白またはカスタムカラーからどれだけ離れていても, まだ黒, 白またはカスタムカラーに近いと見なされるかを選択します. デフォルトは 15 です. 出力フォーマットを選択します. GDAL 2.3 以降,指定されていない場合,フォーマットは拡張子から推測されます (以前は ERDAS Imagine .img でした). 短いフォーマット名を使用してください (例: GeoTIFF の場合は GTiff). 適用するアルゴリズムを選択します. このヘルプメッセージを表示して終了します 進行状況モニターおよびその他のエラー以外の出力を抑制します. 概要 入力ファイルです. 任意の GDAL サポートされた形式, 任意のバンド数, 通常 8 ビットバンドです. 作成される出力ファイルの名前です. 処理はすべて 8 ビット (バイト) で行われます. このユーティリティは :cpp:func:`GDALNearblack` から C で呼び出すこともできます. このユーティリティは画像をスキャンし, ほぼ黒または完全に黒, 白またはカラーカラーの周りの 1 つ以上のカスタムカラーのすべてのピクセルを黒または白に設定しようとします. これは, 圧縮されたエア写真を "修正" してモザイク処理時にカラーピクセルを透明として扱うためによく使用されます. 出力形式は, アルファバンドまたはマスクバンドのいずれかが設定されていない場合, 損失のない圧縮を使用する必要があります. ``floodfill`` (GDAL 3.8 で追加) は `Flood Fill <https://en.wikipedia.org/wiki/Flood_fill#Span_filling>`_ アルゴリズムを使用し, 凹凸部分でも機能します. 一時データセットの作成が必要であり, ``twopasses`` よりも遅くなります. :option:`-nb` に 0 以外の値を使用すると, ``floodfill`` の初期ステップとして実際に ``twopasses`` が呼び出されます. ``twopasses`` は上から下へのパスに続いて下から上へのパスを使用します. これは, GDAL 3.8 以前に実装された唯一のアルゴリズムです. 凹凸部分でミスする可能性があります. このアルゴリズムは画像を 1 スキャンラインずつ処理します. 両端からのスキャン "in" は, "non_black_pixels" ピクセルが黒, 白またはカスタムカラーから "dist" グレーレベル以上離れていることが確認されるまで, ピクセルを黒または白に設定します. ほぼ黒, 白またはカスタムカラーピクセルは黒または白に設定されます. このアルゴリズムはまた, 上から下へ,下から上へのスキャンを行い, 上部または下部の凹凸を識別します. 内側の検索を諦める前に遭遇できる連続した非黒ピクセルの数. デフォルトは 2 です. 