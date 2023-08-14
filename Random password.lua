-- Caracteres a serem utilizados
local alphabet_minus = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
local alphabet_maximus = {"A", "B", "C", "D", "E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
local numbers = {"1","2","3","4","5","6","7","8","9","0",}
local caracters = {"!", "?", "¨", "<", ">", "~", "@", "-" , "="}
local totalist = {alphabet_minus, alphabet_maximus, numbers, caracters}

--Pega o tamanho da senha do usuario
print("Qual deve ser a largura da senha?: ")
local choice = io.read("*n")
if choice == nil then
    choice = choice or "6"
end

--Senha
local password = ""

for i = 1, choice, 1 do

    -- Lista escolhida
    local numero_lista_escolhida = math.random(#totalist)
    local lista_acessado = totalist[numero_lista_escolhida]


    --Pega um caracter
    local caracter = math.random(#lista_acessado)
    local caracter_senha = lista_acessado[caracter]
    print(caracter)

    password = password .. caracter_senha
end

print(password)