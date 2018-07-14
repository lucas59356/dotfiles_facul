case $1 in
    cel) base=/data/data/com.termux/files/home;;
    l5) base=$(cd ~; pwd);;
    *) echo "[ERRO] Especifique um esquema de caminho para eu me orientar"; exit;;
esac

for item in $(cat items.txt)
do
    ln -sib "$(pwd)/$item" "$base"
done
