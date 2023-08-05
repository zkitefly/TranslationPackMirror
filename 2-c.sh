##########################################################################

# Minecraft-Mod-Language-Package-1.12.2-XXXXXX
export "TNAME0=Minecraft-Mod-Language-Modpack.zip$TNAME0"
export "sNAME0=Minecraft-Mod-Language-Package-1.12.2-$sNAME0"
export "MD5NAME0=1.12.2.md5$MD5NAME0"
# Minecraft-Mod-Language-Package-1.16-XXXXXX
export "TNAME1=Minecraft-Mod-Language-Modpack-1-16.zip$TNAME1"
export "sNAME1=Minecraft-Mod-Language-Package-1.16-$sNAME1"
export "MD5NAME1=1.16.md5$MD5NAME1"
# Minecraft-Mod-Language-Package-1.16-fabric-XXXXXX
export "TNAME2=Minecraft-Mod-Language-Modpack-1-16-Fabric.zip$TNAME2"
export "sNAME2=Minecraft-Mod-Language-Package-1.16-fabric-$sNAME2"
export "MD5NAME2=1.16-fabric.md5$MD5NAME2"
# Minecraft-Mod-Language-Package-1.18-XXXXXX
export "TNAME3=Minecraft-Mod-Language-Modpack-1-18.zip$TNAME3"
export "sNAME3=Minecraft-Mod-Language-Package-1.18-$sNAME3"
export "MD5NAME3=1.18.md5$MD5NAME3"
# Minecraft-Mod-Language-Package-1.18-fabric-XXXXXX
export "TNAME4=Minecraft-Mod-Language-Modpack-1-18-Fabric.zip$TNAME4"
export "sNAME4=Minecraft-Mod-Language-Package-1.18-fabric-$sNAME4"
export "MD5NAME4=1.18-fabric.md5$MD5NAME4"
# Minecraft-Mod-Language-Package-1.19-XXXXXX
export "TNAME5=Minecraft-Mod-Language-Modpack-1-19.zip$TNAME5"
export "sNAME5=Minecraft-Mod-Language-Package-1.19-$sNAME5"
export "MD5NAME5=1.19.md5$MD5NAME5"

cd './files-2444'
echo "files-2444:"
ls
echo "==========="

NAME2=$(find . -name "$sNAME2*.zip")
NAME4=$(find . -name "$sNAME4*.zip") 

mv "$NAME2" ../
mv "$NAME4" ../

NAME0=$(find . -name "$sNAME0*.zip")
NAME1=$(find . -name "$sNAME1*.zip")
NAME3=$(find . -name "$sNAME3*.zip")
NAME5=$(find . -name "$sNAME5*.zip")

cd ../
mv "$NAME2" ./files-2444
mv "$NAME4" ./files-2444
cd ./files-2444

cd ../

cd './files-2444-T'

rm *.zip
rm *.md5

cd ../

##################################MD5####################################
cd './files-2444'
echo "files-2444:"
ls
echo "==========="

md5sum "${NAME0}" > "$MD5NAME0"
md5sum "${NAME1}" > "$MD5NAME1"
md5sum "${NAME2}" > "$MD5NAME2"
md5sum "${NAME3}" > "$MD5NAME3"
md5sum "${NAME4}" > "$MD5NAME4"
md5sum "${NAME5}" > "$MD5NAME5"

cut "$MD5NAME0" -c1-32 | tr a-z A-Z>"tmp0.txt"
cut "$MD5NAME1" -c1-32 | tr a-z A-Z>"tmp1.txt"
cut "$MD5NAME2" -c1-32 | tr a-z A-Z>"tmp2.txt"
cut "$MD5NAME3" -c1-32 | tr a-z A-Z>"tmp3.txt"
cut "$MD5NAME4" -c1-32 | tr a-z A-Z>"tmp4.txt"
cut "$MD5NAME5" -c1-32 | tr a-z A-Z>"tmp5.txt"

cat "tmp0.txt" | tr '\n' ' '>"$MD5NAME0"
cat "tmp1.txt" | tr '\n' ' '>"$MD5NAME1"
cat "tmp2.txt" | tr '\n' ' '>"$MD5NAME2"
cat "tmp3.txt" | tr '\n' ' '>"$MD5NAME3"
cat "tmp4.txt" | tr '\n' ' '>"$MD5NAME4"
cat "tmp5.txt" | tr '\n' ' '>"$MD5NAME5"

sed -i 's\ \\g' "$MD5NAME0"
sed -i 's\ \\g' "$MD5NAME1"
sed -i 's\ \\g' "$MD5NAME2"
sed -i 's\ \\g' "$MD5NAME3"
sed -i 's\ \\g' "$MD5NAME4"
sed -i 's\ \\g' "$MD5NAME5"

rm *.txt
mv *.md5 ../
cd ../
mv *.md5 files-2444-T

##########################################################################



##################################MVFILE##################################
cd './files-2444'
echo "files-2444:"
ls
echo "==========="

cp "${NAME0}" "$TNAME0"
cp "${NAME1}" "$TNAME1"
cp "${NAME2}" "$TNAME2"
cp "${NAME3}" "$TNAME3"
cp "${NAME4}" "$TNAME4"
cp "${NAME5}" "$TNAME5"

mv "$TNAME0" ../
mv "$TNAME1" ../
mv "$TNAME2" ../
mv "$TNAME3" ../
mv "$TNAME4" ../
mv "$TNAME5" ../

cd ../
mv *.zip files-2444-T

##########################################################################

####################################1.10##################################
cd './files'

cp 'Minecraft-Mod-Language-Modpack-1-10-2.zip' 'Minecraft-Mod-Language-Modpack-1-10-21.zip'
cp '1.10.2.md5' '1.10.21.md5'

mv 'Minecraft-Mod-Language-Modpack-1-10-21.zip' ../
mv '1.10.21.md5' ../

cd ../

mv 'Minecraft-Mod-Language-Modpack-1-10-21.zip' 'files-2444-T'
mv '1.10.21.md5' 'files-2444-T'

cd './files-2444-T'

cp 'Minecraft-Mod-Language-Modpack-1-10-21.zip' 'Minecraft-Mod-Language-Modpack-1-10-2.zip'
cp '1.10.21.md5' '1.10.2.md5'

rm 'Minecraft-Mod-Language-Modpack-1-10-21.zip'
rm '1.10.21.md5'

##########################################################################
echo "files-2444(NOW):"
ls
echo "==========="


echo Done!
