##########################################################################

# Minecraft-Mod-Language-package-1.12.2-XXXXXX
export "TNAME0=Minecraft-Mod-Language-package-1.12.2.zip$TNAME0"
export "NAME0=Minecraft-Mod-Language-package-1.12.2-$NAME0"
export "MD5NAME0=1.12.2.md5$MD5NAME0"
# Minecraft-Mod-Language-package-1.16-XXXXXX
export "TNAME1=Minecraft-Mod-Language-package-1.16.zip$TNAME1"
export "NAME1=Minecraft-Mod-Language-package-1.16-$NAME1"
export "MD5NAME1=1.16.md5$MD5NAME1"
# Minecraft-Mod-Language-package-1.16-fabric-XXXXXX
export "TNAME2=Minecraft-Mod-Language-package-1.16-fabric.zip$TNAME2"
export "NAME2=Minecraft-Mod-Language-package-1.16-fabric-$NAME2"
export "MD5NAME2=1.16-fabric.md5$MD5NAME2"
# Minecraft-Mod-Language-package-1.18-XXXXXX
export "TNAME3=Minecraft-Mod-Language-package-1.18.zip$TNAME3"
export "NAME3=Minecraft-Mod-Language-package-1.18-$NAME3"
export "MD5NAME3=1.18.md5$MD5NAME3"
# Minecraft-Mod-Language-package-1.18-fabric-XXXXXX
export "TNAME4=Minecraft-Mod-Language-package-1.18-fabric.zip$TNAME4"
export "NAME4=Minecraft-Mod-Language-package-1.18-fabric-$NAME4"
export "MD5NAME4=1.18-fabric.md5$MD5NAME4"

##########################################################################


##################################MD5####################################
cd './files-2444'
ls

NAME0=$(find . -name '$NAME0*')
NAME1=$(find . -name '$NAME1*')
NAME2=$(find . -name '$NAME2*')
NAME3=$(find . -name '$NAME3*')
NAME4=$(find . -name '$NAME4*')

md5sum "${NAME0}" > "$MD5NAME0"
md5sum "${NAME0}" > "$MD5NAME1"
md5sum "${NAME0}" > "$MD5NAME2"
md5sum "${NAME0}" > "$MD5NAME3"
md5sum "${NAME0}" > "$MD5NAME4"

cut "$MD5NAME0" -c1-32 | tr a-z A-Z>"tmp0.txt"
cut "$MD5NAME1" -c1-32 | tr a-z A-Z>"tmp1.txt"
cut "$MD5NAME2" -c1-32 | tr a-z A-Z>"tmp2.txt"
cut "$MD5NAME3" -c1-32 | tr a-z A-Z>"tmp3.txt"
cut "$MD5NAME4" -c1-32 | tr a-z A-Z>"tmp4.txt"

cat "tmp0.txt" | tr '\n' ' '>"$MD5NAME0"
cat "tmp1.txt" | tr '\n' ' '>"$MD5NAME1"
cat "tmp2.txt" | tr '\n' ' '>"$MD5NAME2"
cat "tmp3.txt" | tr '\n' ' '>"$MD5NAME3"
cat "tmp4.txt" | tr '\n' ' '>"$MD5NAME4"

sed -i 's\ \\g' "$MD5NAME0"
sed -i 's\ \\g' "$MD5NAME1"
sed -i 's\ \\g' "$MD5NAME2"
sed -i 's\ \\g' "$MD5NAME3"
sed -i 's\ \\g' "$MD5NAME4"

mv *.md5 ../
cd ../
mv "$MD5NAME0" "files-2444-T"
mv "$MD5NAME1" "files-2444-T"
mv "$MD5NAME2" "files-2444-T"
mv "$MD5NAME3" "files-2444-T"
mv "$MD5NAME4" "files-2444-T"

##########################################################################



##################################MVFILE##################################
cd './files-2444'
ls

cp "$NAME0" "$TNAME0"
cp "$NAME1" "$TNAME1"
cp "$NAME2" "$TNAME2"
cp "$NAME3" "$TNAME3"
cp "$NAME4" "$TNAME4"

mv "$TNAME0" ../
mv "$TNAME1" ../
mv "$TNAME2" ../
mv "$TNAME3" ../
mv "$TNAME4" ../

mv *.zip files-2444-T

##########################################################################

echo Done!
