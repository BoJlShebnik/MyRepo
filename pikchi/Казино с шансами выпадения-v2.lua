
local function Control()
local component = require("component")
local event = require("event")
local sides = require("sides")
local money_id = "customnpcs:npcMoney"  -- Замените на ваши предметы
local side_chest = "DOWN"  -- Замените на нужную сторону сундука
local emi = 4  -- Количество требуемых предметов
local interface = component.me_interface
local cb = component.chat_box
local rs = require"component".redstone
local signalstorona = 2
local url = "https://discord.com/api/webhooks/1106996999171088394/xfDumEHry3UkMdvwd67Ab-YIGTSxcbASr9I9vqkC2RbhlR2ek9jZeWEtfLdOb9zfxMM0"
local internet = require("internet")
local computer = require("computer")
local gpu = component.gpu
local term = require('term')
local warp = "/warp t"
local filesystem = require("filesystem")

local filename = "/home/money.txt"

local function getTime()
  local time_correction = 3
  local tmpfs = component.proxy(computer.tmpAddress())
  tmpfs.close(tmpfs.open("/time", "w"))
  return os.date("%m %d  %H:%M:%S", tonumber(string.sub(tmpfs.lastModified("/time"), 1, -4)) + time_correction * 3600)
end

local function weebhook(id,txt)
  pcall(internet.request, url, {content=id.."  "..txt.." В "..getTime()}, {["User-Agent"] = "OpenComputers 1.7.5"})
end
local function weebhook2(id,txt)
  pcall(internet.request, url, {content=id.."  "..txt}, {["User-Agent"] = "OpenComputers 1.7.5"})
end
-- Список предметов и их шансов выпадения
local items = {
  {name = "Solar Panel", chance = 60},  --солнечная панель ! 
  {name = "Nuclear Reactor", chance = 30}, --ядерный реактор !
  {name = "Reactor Chamber", chance = 40}, --реакторная камера !
  {name = "Advanced Solar Panel", chance = 0.5}, --солнечная панель 5го лв !
  {name = "Hybrid Solar Panel", chance = 0.3}, --солнечная панель 6го лв !
  {name = "Eye of Ender", chance = 90}, --око эндера !
  {name = "Power Converter", chance = 20}, --силовой конвертер !
  {name = "Machine Frame (Resonant)", chance = 30}, --рамка механизма резонирующая !
  {name = "Low Voltage Solar Array", chance = 40}, --солнечная панель 2го лв !
  {name = "Medium Voltage Solar Array", chance = 4}, --солнечная панель 3го лв !
  {name = "Crystal Growth Chamber", chance = 5}, --камера для выращивания кристалов !
  {name = "Sulfur Dust", chance = 70}, --серная пыль 4113:3 !
  {name = "Plutonium", chance = 55}, --плутоний !
  {name = "Tiny Pile of Uranium 235", chance = 85}, --кусочек урана 235 !
  {name = "Electronic Circuit", chance = 85}, --электосхема !
  {name = "Advanced Circuit", chance = 70}, --продвинутая электросхема !
  {name = "Advanced Alloy", chance = 70}, --композит !
  {name = "Carbon Plate", chance = 90}, --углепластик !
  {name = "Iridium Ore", chance = 30}, --иридиевая руда !
  {name = "Nano Saber", chance = 50}, --наносабля !
  {name = "NanoSuit Helmet", chance = 50}, --наношлем !
  {name = "NanoSuit Leggings", chance = 50}, --нанопоножи !
  {name = "NanoSuit Boots", chance = 50}, --наноботинки !
  {name = "QuantumSuit Helmet", chance = 5},--квантовый шлем !
  {name = "QuantumSuit Bodyarmor", chance = 4}, --квантовая кираса !
  {name = "QuantumSuit Leggings", chance = 5}, --квантовые поножи !
  {name = "QuantumSuit Boots", chance = 5}, --квантовые ботинки !
  {name = "Lapotron Crystal", chance = 50}, --лазуритовый кристал !
  {name = "Glass Fibre Cable", chance = 70}, --стекловолоконный провод !
  {name = "Quad Fuel Rod (Uranium)", chance = 40}, --счетверённый стержень уран !
  {name = "Overclocker Upgrade", chance = 50}, --улучшение ускоритель !
  {name = "Sunnarium", chance = 30}, --саннариум !
  {name = "Sunnarium Piece", chance = 60}, --часть саннариума !
  {name = "Uranium Ingot", chance = 80}, --слиток урана !
  {name = "Fluix Pearl", chance = 80}, --изменчивая жемчужина !
  {name = "Acceleration Card", chance = 65}, --карта ускорения !
  {name = "1k ME Storage Component", chance = 80}, --1к мэ компонент хранения !
  {name = "64k ME Storage Component", chance = 10}, --64к мэ компонент хранения !
  {name = "Pulverized Shiny Metal", chance = 80}, --измельчёная платина !
  {name = "Enderium Ingot", chance = 50}, --слиток эндериума !
  {name = "GraviChestPlate", chance = 1}, --гравитационный желет !
  {name = "Advanced NanoChestPlate", chance = 40}, --улучшеный наножелет !
  {name = "Vajra", chance = 10}, --ваджра !
  {name = "Superconductor", chance = 10}, --сверхпроводник !
  {name = "item.Flux_ingot.name", chance = 50}, --флаксовый слиток !
  {name = "item.Amethyst.name", chance = 30}, --аметист !
  {name = "item.Granat.name", chance = 50}, --гранат !
  {name = "item.Pergament.name", chance = 80}, --пергамент 6376 !
  {name = "item.Powder11.name", chance = 20}, --трижды сжатый камень !
  {name = "item.Epic_plan.name", chance = 20}, --уникальный чертёж !
  {name = "item.Quant_core.name", chance = 20}, --квантовое ядро 1го уровня !
  {name = "item.Tanzanit.name", chance = 90}, --танзанит !
  {name = "Central Processing Unit (CPU) (Tier 3)", chance = 40}, --центральный процессор (цп) 3го уровня !
  {name = "Draconium Dust", chance = 80}, --дракониевая пыль !
  {name = "Wyvern Chestplate", chance = 2}, --нагрудник виверны !
  {name = "Wyvern Leggings", chance = 2}, --поножи виверны !
  {name = "Draconic Staff of Power", chance = 0.1}, --драконий посох силы !
  {name = "Sword of the Wyvern", chance = 2}, --мечь виверны !
  {name = "Wyvern Boots", chance = 2}, --ботинки виверны !
  {name = "Pickaxe of the Wyvern", chance = 2}, --кирка виверны !
  {name = "Awakened Draconium Ingot", chance = 20}, --пробуждённый дракониевый слиток !
  {name = "Wyvern Helm", chance = 2}, --шлем виверны !
  {name = "item.Legend_plan.name", chance = 10}, --легендарный чертёж !
  {name = "item.Thorium_ingot.name", chance = 70}, --ториевый слиток !

  -- Добавьте остальные предметы с соответствующими шансами
}

function zagruzka() -- функция загружает картинки для казика
local shell = require("shell")
local fs = require("filesystem")
local applications = {
{"https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/Kazino_BoJlShebnik/Zastavka.pic", "/home/zastavka.pic" },
{"https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/Kazino_BoJlShebnik/Tir_1.pic", "/home/tir_1.pic" },
{"https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/Kazino_BoJlShebnik/Tir_2.pic", "/home/tir_2.pic" },
{"https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/Kazino_BoJlShebnik/Tir_3.pic", "/home/tir_3.pic" },
{"https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/Kazino_BoJlShebnik/Tir_4.pic", "/home/tir_4.pic" },
{"https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/Kazino_BoJlShebnik/Tir_5.pic", "/home/tir_5.pic" },
{ "https://raw.githubusercontent.com/krovyaka/OpenComputers-Casino/master/external/IgorTimofeev/AdvancedLua.lua", "/lib/advancedLua.lua" },
 {"https://raw.githubusercontent.com/krovyaka/OpenComputers-Casino/master/external/IgorTimofeev/Color.lua","/lib/color.lua"},
 {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/DoubleBuffering.lua","/lib/doubleBuffering.lua"},
 {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/Image.lua","/lib/image.lua"},
  {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/OCIF.lua","/lib/FormatModules/OCIF.lua"},

}


shell.execute("md /lib")
shell.execute("md /lib/FormatModules")
--Загружаем файлы
for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")   
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")
end
--zagruzka() -- закоментировать если уже загружено


image = require("image")
buffer = require("doubleBuffering")

function displayImage(filename)
  img = image.load(filename)
  buffer.drawImage(53, 1, img)
  buffer.drawChanges()
end

function zastavka()
  displayImage("/home/zastavka.pic")
end

function tir1()
  displayImage("/home/tir_1.pic")
end

function tir2()
  displayImage("/home/tir_2.pic")
end

function tir3()
  displayImage("/home/tir_3.pic")
end

function tir4()
  displayImage("/home/tir_4.pic")
end

function tir5()
  displayImage("/home/tir_5.pic")
end

local function text()
     gpu.setForeground(0xFFFFFF)
     gpu.setBackground(0x000000)
     gpu.fill(1, 1, 53, 60, ' ')
end
text()
term.clear()

-- Функция для выбора случайного предмета
local function getRandomItem()
  local totalChance = 0
  for _, item in ipairs(items) do
    totalChance = totalChance + item.chance
  end

  local randomValue = math.random() * totalChance
  for _, item in ipairs(items) do
    if randomValue <= item.chance then
      return item.name, item.chance
    end
    randomValue = randomValue - item.chance
  end
end

-- Функция для записи переменной в файл
function writeVariableToFile(value)
  local file = io.open(filename, "w")
  file:write(tostring(value))
  file:close()
end

-- Функция для чтения переменной из файла и увеличения её на определенное значение
function readAndIncrementVariable(incrementValue)
  local file = io.open(filename, "r")
  if file then
    local content = file:read("*all")
    file:close()
    local value = tonumber(content)
    if value then
      value = value + incrementValue
      writeVariableToFile(value)
      return value
    end
  else
    writeVariableToFile(0)
  end
  return nil
end

local function addToVariableAndPrint(result)
  local myVariable = readAndIncrementVariable(result)
  if myVariable then
    weebhook2(" ", "Казино заработало "..myVariable.." эм.")
  else
    print("Не удалось прочитать переменную.")
  end
end

local function checkChest1()
  local chest = component.chest  -- Получаем компонент сундука

  if chest == nil then
    error("Сундук не обнаружен.")
  end

  local size = chest.getInventorySize()
  if size == nil then
    error("Не удалось получить размер инвентаря сундука.")
  end
 
local data = chest.getAllStacks(0)
for i = 1,size do
  if data[i] then
    if data[i].id == money_id and data[i].qty >= emi then
      if chest.pushItem(side_chest,i,emi) == emi then
               gpu.setForeground(0xFFFFFF)
               gpu.setBackground(0x000000)
               print('Игра оплачена - Время: '..getTime())
             
               event.push("casino_use")

               break  -- Если вы хотите прервать цикл после первого успешного перемещения
        else
          cb.say("Закончились слоты под эмы в хранилище")
          os.sleep(10)
    end
  end
 end
end


end

local function export(item,direction,amount)
  local give,dropcount,tru = 0,0,0
  local data1 = interface.getItemsInNetwork({label=item})
  local data2 = interface.getAvailableItems()
  while true do
    tru = tru + 1
    for i = 1,#data1 do
      if data1[i].size > 0 then
        for j = 1,#data2 do
          if data1[i].name == data2[j].fingerprint.id then
            if data1[i].damage == data2[j].fingerprint.dmg then
            local ok,qty = pcall(interface.exportItem,data2[j].fingerprint,direction,amount-give)
            if ok then
               dropcount = qty.size
             else
               dropcount = 0
             end
              give = give + dropcount
              if give == amount then
                return true,give
              end
            end
          end
        end
      end
    end
    if tru >= 3 and dropcount == 0 or dropcount ~= amount then
      print("Нет нужного предмета в мэ")
      os.sleep(1)
      return false,dropcount
    end
  end
end
-- Обработчик события, вызываемого при использовании игроком казино
local function onCasinoUse()
local itemName, itemChance = getRandomItem()
  
if export(itemName,"DOWN",1) then


weebhook("Казино майнкрафт: выпало = ", itemName)
os.sleep(0.1) 
addToVariableAndPrint(emi)

 cb.setName( "§r§fL§7§o]§r§f ❻ §8[§4Казино§8§r§8") 
 cb.say("§6Сообщение§r: §bВыпал: §6"..itemName.." §bШанс:§e "..itemChance.."%")


if itemChance >= 70 then
tir1()
gpu.setForeground(0x00FFFF)
gpu.setBackground(0x000000)
print('Вам выпал: ' .. itemName.." - Шанс: "..itemChance.." %")
elseif itemChance >= 50 then
tir2()
gpu.setForeground(0x00FF00)
gpu.setBackground(0x000000)
print('Вам выпал: ' .. itemName.." - Шанс: "..itemChance.." %")
elseif itemChance >= 30 then
tir3()
gpu.setForeground(0xFF8C00)
gpu.setBackground(0x000000)
print('Вам выпал: ' .. itemName.." - Шанс: "..itemChance.." %")
elseif itemChance >= 10 then
tir4()
gpu.setForeground(0xFF0000)
gpu.setBackground(0x000000)
print('Вам выпал: ' .. itemName.." - Шанс: "..itemChance.." %")
elseif itemChance >= 2 then
tir5()
gpu.setForeground(0xFF0000)
gpu.setBackground(0x000000)
print('Вам выпал: ' .. itemName.." - Шанс: "..itemChance.." %")
end

 
 rs.setOutput(signalstorona, 0)
 rs.setOutput(signalstorona, 16)
 os.sleep(0.1)
 rs.setOutput(signalstorona, 0)

 event.ignore("casino_use", onCasinoUse)

else
weebhook("ВНИМАНИЕ!- в казино закончился предмет", itemName) 
os.sleep(1) 
onCasinoUse()

end




end

while true do 
-- Регистрация обработчика события
checkChest1()
event.listen("casino_use", onCasinoUse)

os.sleep(0.1)
zastavka()
end



end


while true do
  local ok,err = pcall(Control)
  if not ok then
    print("Выбивает ошибку")
    pcall(Control)
    if type(err) == "table" then
        print("Выбивает ошибку 2")
      pcall(Control)
    else
        print("Выбивает ошибку 3")
      pcall(Control)
    end
    
  end
end

