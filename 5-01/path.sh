#!/bun/bash
echo "Введите путь для проверки:"
read user_path
if [[ ! -d $user_path ]]; then
    mkdir $user_path
    echo "Директория создана"
else
    echo "Директория существует"
fi;
