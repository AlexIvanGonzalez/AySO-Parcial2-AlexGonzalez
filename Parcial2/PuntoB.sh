vagrant@vmAMN316:~/UTN-FRA_SO_Ansible/ejemplo_02$ history
    1  ip address show
    2  ssh-keygen #Genero las keys
    3  ll .ssh/
    4  cat .ssh/id_rsa.pub #copio public key
    5  sudo apt update #actualizo vm
    6  sudo apt install ansible #Instalo ansible
    7  sudo apt list --installed |grep ansible
    8  ansible –-version
    9  ansible –v
   10  ssh vagrant@192.168.56.9 #me conecto al host
   11  git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git #descargo repo. git
   12  cd UTN-FRA_SO_Ansible/ejemplo_02
   13  vim inventory #modifico el inventory
   14  cat inventory 
   15  vim playbook.yml #modifico el playbook
   16  ansible-playbook -i inventory playbook.yml #instalo apache en el host
   17  history

vagrant@vmAnsDev316:~$ history
    1  ll
    2  ip address show
    3  ll .ssh/
    4  vim .ssh/authorized_keys #agrego public key del server al host
    5  cat .ssh/authorized_keys
    6  ip address show
    7  sudo apt list --installed |grep apache #check de la instalacion de apache
    8  history
