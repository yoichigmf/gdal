��          �                 &     ,   4     a  '  m  8   �  N   �  �        �     �  N   �     5  )   E  n   o  Y   �  q  8  :   �  H   �     .  �  5  M   �  m   &	  �   �	  <   P
     �
  p   �
       '     �   A  �   �   Band to convert to RGB, defaults to 1. Convert an 8bit paletted image to 24bit RGB. Description Extract the color table from <palette_file> instead of getting it from <source_file>. Can be used to have a consistent color table for multiple files. The <palette_file> must be either a raster file in a GDAL supported format with a palette or a color file in a supported format (txt, qml, qlr). Generate a RGBA file (instead of a RGB file by default). Gives a brief usage message for the generic GDAL commandline options and exit. Select the output format. Starting with GDAL 2.3, if not specified, the format is guessed from the extension (previously was GTiff). Use the short format name. Show this help message and exit Synopsis The '-expand rgb|rgba' option of :ref:`gdal_translate` obsoletes that utility. The input file. The output RGB file that will be created. This utility will convert a pseudo-color band on the input file into an output RGB file of the desired format. pct2rgb is a Python utility, and is only available if GDAL Python bindings are available. Project-Id-Version: GDAL 
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
 RGB に変換するバンド, デフォルトは 1 です. 8 ビットのパレット画像を 24 ビット RGB に変換します. 説明 <source_file> からではなく, <palette_file> からカラーテーブルを抽出します. 複数のファイルに一貫したカラーテーブルを持つために使用できます. <palette_file> は, パレットを持つ GDAL サポートフォーマットのラスタファイルまたはサポートされているフォーマット (txt, qml, qlr) のカラーファイルである必要があります. RGBA ファイルを生成します (デフォルトでは RGB ファイル). 一般的な GDAL コマンドラインオプションの簡単な使用方法を表示して終了します. 出力形式を選択します. GDAL 2.3 以降, 指定されていない場合, 形式は拡張子から推測されます (以前は GTiff でした). 短い形式名を使用します. このヘルプメッセージを表示して終了します 概要 :ref:`gdal_translate` の '-expand rgb|rgba' オプションがこのユーティリティを廃止しました. 入力ファイル. 作成される出力 RGB ファイル. このユーティリティは, 入力ファイルの疑似カラーバンドを, 望ましい形式の出力 RGB ファイルに変換します. pct2rgb は Python ユーティリティであり, GDAL Python バインディングが利用可能な場合のみ利用可能です. 