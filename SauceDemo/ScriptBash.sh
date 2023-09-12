### Bash para rodar os arquivos para Release ###
Versao="Para o GitHub"

echo AUTOMAÇÃO GITHUB - SAULOBARBOZ
echo ================================ 
echo Digite o número do teste que quer executar?
echo 1 - Compra Sucesso
echo 2 - Sair
read TEST

if [ "$TEST" -eq "1" ]; then
	robot -N "TesteE2E - $Versao" -d .logs/TesteE2E$Versao $@ tests/CompraSucesso.robot
		if [ $? -eq 0 ]; then
			echo
			echo "🚀 All Login Tests Passed!!"
			exit 0
		fi
fi

if [ "$TEST" -eq "2" ]; then
	exit
fi