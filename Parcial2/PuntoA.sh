 1  ll
 2  cd AySO-Parcial2-AlexGonzalez/
 3  ll
 4  cat > PuntoA.sh
 5  cat > PuntoB.sh
 6  cat > PuntoC.sh
 7  lsblk
 8  sudo fdisk /dev/sdc #Hacemos 3 particiones "p +1G" y una "e +3.2G", desp hago 2 particiones logicas "+1.5G"
 9  lsblk
10  sudo fdisk /dev/sdc #Hacemos la asignacion de SWAP
11  history
12  sudo mkswap /dev/sdc1
13  sudo swapon /dev/sdc1 #prendo el SWAP
14  free -h
15  history
16  sudo fdisk /dev/sdc #Hacemos la asignacion de LVM
17  sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6 #Creo los vol. fisicos
18  sudo pvs
19  sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3 #Creo grupos vgAdmin y vgDeveloper, se los asigno a las particiones
20  sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
21  sudo pvs
22  history
23  sudo lvcreate -L 1.99G vgAdmin -n lvAdmin #Hago los vol. logicos dentro de los grupos asignados
24  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
25  sudo lvcreate -L 1G vgDevelopers -n lvTesters
26  sudo lvcreate -L 0.99G vgDevelopers -n lvDevops
27  sudo lvs
28  sudo vgs
29  sudo pvs
30  history
31  sudo fdisk -l
32  sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin #Formateamos los lv
33  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
34  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
35  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
36  sudo lsblk -f
37  history
38  sudo mkdir /mnt/lvAdmin #Montamos los lv
39  sudo mkdir /mnt/lvDevelopers
40  sudo mkdir /mnt/lvTesters
41  sudo mkdir /mnt/lvDevops
42  sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
43  sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
44  sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
45  sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
46  df -h
47  history
