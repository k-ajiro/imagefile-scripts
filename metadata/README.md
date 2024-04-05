# metadata

EXIFのmetadataをいじるscript

## fix-metadata-for-mitene.sh

スマホアプリ「みてね」は、SubSecXX タグが無いと撮影日時を正しく認識してくれず、
ファイルのタイムスタンプを撮影日時として認識してしまう。ので、CreateDate を元に
SubSecXX を追加する。
