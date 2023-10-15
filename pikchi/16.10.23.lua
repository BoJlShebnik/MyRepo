-- Автор: BoJlShebnik
local component = require ("component")
local cb = component.chat_box
local event=require("event")
local term=require("term")
local schet = 1
local gpu = component.gpu
local computer = require("computer")
local internet = require("internet")
local rs = require"component".redstone
local url = "https://discord.com/api/webhooks/1106996999171088394/xfDumEHry3UkMdvwd67Ab-YIGTSxcbASr9I9vqkC2RbhlR2ek9jZeWEtfLdOb9zfxMM0"
cb.setDistance(1000)
term.clear()
print( "==============================================" )
print( "Сердце Ани - автор BoJlShebnik") 
print( "==============================================" )
 cb.setName( "§r§fL§7§o]§r§f ❻ §8[§4Бот§8§r§8")
 cb.say("§6Аня§r: §bЯ рада тебя видеть дорогой хозяин")


function downol()

local shell = require("shell")
local fs = require("filesystem")

--Массив с программами, которые необходимо загрузить.
--Первый элемент - ссылка на файл, второй - путь для сохранения файла.
local applications = {

{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/animepar.pic", "/home/animepar.pic" },
{ "https://raw.githubusercontent.com/krovyaka/OpenComputers-Casino/master/external/IgorTimofeev/AdvancedLua.lua", "/lib/advancedLua.lua" },
 {"https://raw.githubusercontent.com/krovyaka/OpenComputers-Casino/master/external/IgorTimofeev/Color.lua","/lib/color.lua"},
 {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/DoubleBuffering.lua","/lib/doubleBuffering.lua"},
 {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/Image.lua","/lib/image.lua"},
{"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/OCIF.lua","/lib/FormatModules/OCIF.lua"},



}

--Загружаем файлы
for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")       
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")

function image()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/animepar.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end

image()


end

downol()


local function getTime()
  local time_correction = 3
  local tmpfs = component.proxy(computer.tmpAddress())
  tmpfs.close(tmpfs.open("/time", "w"))
  return os.date(" %d %m  %H:%M:%S", tonumber(string.sub(tmpfs.lastModified("/time"), 1, -4)) + time_correction * 3600)
end

local function weebhook(id,txt)
  pcall(internet.request, url, {content=id..getTime().."  "..txt}, {["User-Agent"] = "OpenComputers 1.7.5"})
end

local function tpsany()

    local c, fs = require("component"), require("filesystem")
    local gpu = c.gpu
    local TC, RO, RN, RD, TPS = 2, 0, 0, 0
    local com = require("component")
    -- Построение интерфейса происходит во внутреннем буффере терминала (он же мост).
     -- Создаем компонент "Текст".
    -- Его нужно создать только один раз, в остальное время можно обращаться по ссылке и изменять любой параметр.
    local function time()
        local f = io.open("/tmp/TF", "w")
        f:write("test")
        f:close()
        return(fs.lastModified("/tmp/TF"))
    end
        RO = time()
        os.sleep(TC) 
        RN = time()
        RD = RN - RO
        TPS = 20000 * TC / RD
        TPS = string.sub(TPS, 1, 5)
        nTPS = tonumber(TPS)
    local function getTime()
            local time_correction = 3
            local tmpfs = component.proxy(computer.tmpAddress())
            tmpfs.close(tmpfs.open("/time", "w"))
            return os.date(" %H:%M:%S", tonumber(string.sub(tmpfs.lastModified("/time"), 1, -4)) + time_correction * 3600)
          end

        if nTPS <= 10 then
            local Time = getTime()
            cb.say("§6Аня§r: §b Тпс сервера ужасный - §4".. TPS.." §b:( в :§f "..Time.."§b МСК")
        
        elseif nTPS <= 15 then
            local Time = getTime()
            cb.say("§6Аня§r: §b Тпс сервера в норме - §e".. TPS.." §b^^ в :§f "..Time.."§b МСК")
        elseif nTPS > 15 then 
            local Time = getTime()
            cb.say("§6Аня§r: §b Тпс сервера пушка! §a".. TPS.." §b:) в :§f "..Time.."§b По МСК")
        end

end


     gpu.setForeground(0xFFFFFF)
     gpu.setBackground(0x000000)



while true do
cb.setName( "§r§fL§7§o]§r§f ❻ §8[§4Бот§8§r§8")
local text = {event.pull("chat_message")}  
if string.find(text[4],"де иридий") ~= nil and string.find(text[4],"де иридий") then
cb.say("§6Аня§r: §bИридий должен быть где-то тут")
elseif string.find(text[4],"включить джетпак") ~= nil and string.find(text[4],"включить джетпак") then
cb.say("§6Аня§r: §bЧтобы включить джетпак нажмите: F")
cb.say("§6Аня§r: §bПросто одна кнопка без alt или ctrl")
elseif string.find(text[4],"владелец варпа") ~= nil and string.find(text[4],"владелец варпа") then
cb.say("§6Аня§r: §b По поводу варпа обращаться к BoJlShebnik")
elseif string.find(text[4],"обмен руд") ~= nil and string.find(text[4],"обмен руд") then
cb.say("§6Аня§r: §b Обмен руд прямо")
elseif string.find(text[4],"ак дела") ~= nil and string.find(text[4],"ак дела") then
cb.say("§6Аня§r: §b Лучше всех, как сам?")
elseif string.find(text[4],"акие варпы есть") ~= nil and string.find(text[4],"акие варпы есть") then
cb.say("§6Аня§r: §b /warp f - популярный варп")
elseif string.find(text[4],"де удача") ~= nil and string.find(text[4],"де удача") then
cb.say("§6Аня§r: §b Удача 5 где-то тут, поищи повнимательней")
elseif string.find(text[4],"де мехи") ~= nil and string.find(text[4],"де мехи") or string.find(text[4],"де механизмы") then
cb.say("§6Аня§r: §b Механизмы где-то тут, поищи повнимательней")
elseif string.find(text[4],"де зарядка") ~= nil and string.find(text[4],"де зарядка") then
cb.say("§6Аня§r: §b Зарядка где-то тут, поищи повнимательней")
elseif string.find(text[4],"кроватку") ~= nil and string.find(text[4],"кроватку") then
cb.say("§6Аня§r: §b В кроватке надо спать :3")
elseif string.find(text[4],"лагает") ~= nil and string.find(text[4],"лагает") then
cb.say("§6Аня§r: §b Если у тебя лагает время апгрейдить ПК")
elseif string.find(text[4],"передай") ~= nil and string.find(text[4],"передай") or string.find(text[4],"хорошо передай") or string.find(text[4],"сообщи ему") or string.find(text[4],"Передай") or string.find(text[4],"переда") then
cb.say("§6Аня§r: §b Диктуйте что передать:")
evt,_,plr,msg=event.pull("chat_message")


print(""..plr.." - просил прередать: "..msg.."")
weebhook("Аня:", ""..plr.." - просил прередать: "..msg.."")



cb.say("§6Аня§r: §b Хорошо я передам")
elseif string.find(text[4],"BoJlShebnik") ~= nil and string.find(text[4],"BoJlShebnik") or string.find(text[4],"волшебник") or string.find(text[4],"волш") then
cb.say("§6Аня§r: §b Волшебник сейчас не может говорить")
cb.say("§6Аня§r: §b Я как его личный ассистент могу передать сообщение")
elseif string.find(text[4],"привет") ~= nil and string.find(text[4],"привет") or string.find(text[4],"Привет") or string.find(text[4],"Прив") or string.find(text[4],"прив") then
cb.say("§6Аня§r: §b Привет милый")
elseif string.find(text[4],"удачу 4") ~= nil and string.find(text[4],"удачу 4") or string.find(text[4],"сделать удачу 4") or string.find(text[4],"скрафтить удачу 4") then
cb.say("§6Аня§r: §b Чтобы собрать удачу 4 нужна удача3, §bэлемент §bтьмы+100лв") 
elseif string.find(text[4],"удачу 5") ~= nil and string.find(text[4],"удача 4") or string.find(text[4],"сделать удачу 5") or string.find(text[4],"скрафтить удачу 5") then
cb.say("§6Аня§r: §b Чтобы собрать удачу 5 нужна удача4,§bпечать §bсилы+200лв")
elseif string.find(text[4],"рутой варп") ~= nil and string.find(text[4],"рутой варп") then
cb.say("§6Аня§r: §b Спасибо зайка :3")
elseif string.find(text[4],"ак попасть в клуб") ~= nil and string.find(text[4],"ак попасть в клуб") then
cb.say("§6Аня§r: §b Чтобы стать участником клуба нужно написать BoJlShebniky")
elseif string.find(text[4],"антимут") ~= nil and string.find(text[4],"нтимут") or string.find(text[4],"сними мут") or string.find(text[4],"размути") or string.find(text[4],"вкл антимут") or string.find(text[4],"размут") then
cb.say("§6Аня§r: §b Я включила вам антимут ровно на 10 сообщений") 
local a = 0 





  while a < 10 do
  a = a + 1
  evt,_,plr,msg=event.pull("chat_message")
  cb.say("§6"..plr.."§r: §b "..msg.."")
  local vick = "выключи"
  local vick2 = "выключай"
  local vick3 = "аня выключай"
  local vick4 = "вырубай"
  if msg == vick then
  a=10
  cb.say("§6Аня§r: §b Выключила") 
  elseif msg == vick2 then
  a=10
  cb.say("§6Аня§r: §b Выключила")
   elseif msg == vick3 then
  a=10
  cb.say("§6Аня§r: §b Выключила") 
   elseif msg == vick4 then
  a=10
  cb.say("§6Аня§r: §b Выключила") 
  end
  end
elseif string.find(text[4],"ня покажи фокус") ~= nil and string.find(text[4],"ня покажи фокус") then
cb.say("§6Аня§r: §b Запуск процесса")
os.sleep(1)
cb.say("§6Аня§r: §b [§4#_________§b]-10%")
os.sleep(1)
cb.say("§6Аня§r: §b [§4##________§b]-20%")
os.sleep(0.3)
cb.say("§6Аня§r: §b [§4####______§b]-35%")
os.sleep(1)
cb.say("§6Аня§r: §b [§4########__§b]-80%")
os.sleep(0.9)
cb.say("§6Аня§r: §b [§4##########§b]-100%")
os.sleep(1)
cb.say("§6Аня§r: §b Определение уязвимостей")
os.sleep(2)
cb.say("§6Аня§r: §b Начинаю подбор пароля: §e§k121321321 §r§b Ожидание")
os.sleep(2)
cb.setName( "СБОЙ ЧАТА:")
local rr = 0 
  while rr < 50 do
  rr = rr + 1
  cb.say("§4ОШИБКА§r: §f§k121321321 Неудачаповезёт в следующий раз :3 §r§4Внимание!")
  end
cb.setName( "§r§fL§7§o]§r§f ❻ §8[§4Бот§8§r§8")
cb.say("§6Аня§r: §b Неудача - повезёт в следующий раз :3")
------------------------------
elseif string.find(text[4],"ня слушай") ~= nil and string.find(text[4],"ня слушай") then
cb.say("§6Аня§r: §b Что прикажите?")
  evt,_,plr2,msg=event.pull("chat_message")
  local hoz = "BoJlShebnik" 
  if plr2 == hoz then
  cb.say("§6Аня§r: §b❤Будет исполнено дорогой хозяин!❤")
  else
  cb.say("§6Аня§r: §bТы не мой хозяин! Иди лесом :3")
  -- КОМАНДЫ
  end

elseif string.find(text[4],"колько время") ~= nil and string.find(text[4],"колько время") or string.find(text[4],"акое время") or string.find(text[4],"колько времени") or string.find(text[4],"кольско сейчас врем") then

local function getTime()
  local time_correction = 3
  local tmpfs = component.proxy(computer.tmpAddress())
  tmpfs.close(tmpfs.open("/time", "w"))
  return os.date("%m %d  %H:%M:%S", tonumber(string.sub(tmpfs.lastModified("/time"), 1, -4)) + time_correction * 3600)
end
local Time = getTime()
cb.say("§6Аня§r: §b Сейчас:§f "..Time.."§b - По МСК")









elseif string.find(text[4],"кан игрока") ~= nil and string.find(text[4],"кан игрока") or string.find(text[4],"сканир") or string.find(text[4],"ня что в инвенторе") or string.find(text[4],"ня покажи инвентарь") or string.find(text[4],"ня инвентарь")  then 




local function invskan()
local function Control2()


local term = require("term")
local component = require("component")
local event = require("event")
local gpu = component.gpu
local exit = 0
local buffer = 1
 
---------------------------------------------------------------------------------------------------------------------------------------
 
if component.isAvailable("openperipheral_sensor") then
    openperipheral_sensor = component.openperipheral_sensor
else
    cb.say("§6Аня§r: §b Установите сенсор в ваш компьютер")
    
end
 
---------------------------------------------------------------------------------------------------------------------------------------
 
function helmet_armor() -- Проверка шлема
    helmet = openperipheral_sensor.getPlayerByName(player).all().living.armor.helmet
    if helmet == nil then 

        cb.say("§6Аня§r: §b Шлем отсутствует")
       
    else
        cb.say("§6Аня§r: §b Шлем: " .. helmet.display_name)
    end
end
 
function chestplate_armor() -- Проверка нагрудника
    chestplate = openperipheral_sensor.getPlayerByName(player).all().living.armor.chestplate
    if chestplate == nil then
        cb.say("§6Аня§r: §b Нагрудник отсутствует") 
    else
        cb.say("§6Аня§r: §b Нагрудник: " .. chestplate.display_name)
    end
end
 
function leggings_armor() -- Проверка поножей 
    leggings = openperipheral_sensor.getPlayerByName(player).all().living.armor.leggings
    if leggings == nil then 
        cb.say("§6Аня§r: §b Поножи отсутствуют" )
    else
        cb.say("§6Аня§r: §b Поножи: " .. leggings.display_name)
    end
end
 
function boots_armor() -- Проверка ботинок 
    boots = openperipheral_sensor.getPlayerByName(player).all().living.armor.boots
    if boots == nil then 
        cb.say("§6Аня§r: §b Ботинки отсутствуют")
    else
        cb.say("§6Аня§r: §b Ботинки: " .. boots.display_name)
    end
end
 
function effect() -- Проверка эффектов
    potion_effects = openperipheral_sensor.getPlayerByName(player).all().living.potion_effects
    cb.say("Эффекты отсутствуют:")
    for i = 1, #potion_effects do
        cb.say("§6Аня§r: §b На игрока действую следующие эффекты: " .. i .. ": " .. potion_effects[i].effect.name)
    end 
end
 
function scan_inventory() -- Скан игрока
    for i = 1, 36 do
        inventory = openperipheral_sensor.getPlayerByName(player).all().player.inventory
        if inventory[i] == nil then 
        else
            buffer = buffer + 1
            cb.say("Слот: " .. i .. ": " .. inventory[i].all().display_name .. " | Amount: " .. inventory[i].all().qty)
        end
    end
    wait()
end
 
function main_graphic() -- менюшка
 

end
 
function hello() -- запуск
     cb.say("§6Аня§r: §b Продиктуйте точный ник игрока которого хотите про сканировать в чат")

evt,_,plr,msg=event.pull("chat_message")


    player = msg
    term.clear()
    main_graphic()
    main_scan()
end
 
function main_scan() -- всеобщий скан
    cb.say("§6Аня§r: §b Запуск всеобщего скана " .. player)
    helmet_armor()
    chestplate_armor()
    leggings_armor()
    boots_armor()
    effect()
    scan_inventory()
end
 
function wait() -- ожидает закрытия
   cb.say("§6Аня§r: §b Завершено")
           
        end

 

 
---------------------------------------------------------------------------------------------------------------------------------------
 

hello()
end
local ok,err = pcall(Control2)
  if not ok then
    cb.say("§6Аня§r: §b Игрока нет в рг")
  
    if type(err) == "table" then
           cb.say("§6Аня§r: §b Игрока нет в рг код 2")
    
    else
            cb.say("§6Аня§r: §b Игрока нет в рг код 3")

    end
    
  end
end

invskan()



elseif string.find(text[4],"ня создай панель") ~= nil and string.find(text[4],"ня создай панель") or string.find(text[4],"ня скрафти панель") or string.find(text[4],"ня сделай панель") or string.find(text[4],"ня сделай квг") or string.find(text[4],"ня создай квг") or string.find(text[4],"ня скрафти КВГ") or string.find(text[4],"ня запусти панель") or string.find(text[4],"ня роди панель панель") then 



function craft()


end


cb.say("§6Аня§r: §b Запущен крафт панели")
elseif string.find(text[4],"ня перезагрузи мэ") ~= nil and string.find(text[4],"ня перезагрузи мэ") or string.find(text[4],"ня перезагрузи ме") or string.find(text[4],"reset me") or string.find(text[4],"ня выключи мэ") or string.find(text[4],"ня мэ") then 
cb.say("§6Аня§r: §b Перезагружаю мэ")
rs.setOutput(2, 16)
os.sleep(0.1)
 rs.setOutput(2, 0)

elseif string.find(text[4],"ня включи ферму") ~= nil and string.find(text[4],"ня включи ферму") or string.find(text[4],"ня цветы") or string.find(text[4],"ферма цвет") then 
cb.say("§6Аня§r: §b Включила ферму цветов, теперь цветочки будут копиться в мэ :3")
rs.setOutput(4, 16)
 
elseif string.find(text[4],"ня выключи ферму") ~= nil and string.find(text[4],"ня выключи ферму") or string.find(text[4],"ня выключи цветы") or string.find(text[4],"выключай ферму") then 
cb.say("§6Аня§r: §b Выключила ферму цветов, цветы не будут копиться!")
rs.setOutput(4, 0)
 
elseif string.find(text[4],"ня подготовь ритуал призыва") ~= nil and string.find(text[4],"ня ритуал призыва") or string.find(text[4],"ня подготовь ритуал") or string.find(text[4],"ня ритуал") or string.find(text[4],"ня камень воскрешения") or string.find(text[4],"ня поставь крафт ритуала") then 
cb.say("§6Аня§r: §b Подготавливаю всё для ритуала призыва дракона, отойду на 10 сек")
rs.setOutput(2, 16)
os.sleep(10)

elseif string.find(text[4],"ня радио") ~= nil and string.find(text[4],"ня включить радио") or string.find(text[4],"ня включи радио") or string.find(text[4],"ня радио") or string.find(text[4],"ня музыку") or string.find(text[4],"ня поставь радио") then 

rs.setOutput(3, 16)
-- https://myradio24.org/65389
os.sleep(0.1)
 rs.setOutput(3, 0)
 cb.say("§6Аня§r: §b Включила радио")
elseif string.find(text[4],"ня выключи радио") ~= nil and string.find(text[4],"ня выключить радио") or string.find(text[4],"ня выключи радио") or string.find(text[4],"ня радио выключай") or string.find(text[4],"ня выключи музыку") or string.find(text[4],"ня поставь радио") then 

rs.setOutput(3, 16)
-- https://myradio24.org/65389
os.sleep(0.1)
 rs.setOutput(3, 0)
 cb.say("§6Аня§r: §b Выключила радио")
 ----------------------------
elseif string.find(text[4],"ня отмени") ~= nil and string.find(text[4],"ня отмени автокрафт") or string.find(text[4],"ня отмена") or string.find(text[4],"ня выключи") or string.find(text[4],"ня не крафти") or string.find(text[4],"ня стоп крафт") or string.find(text[4],"ня отмени создание") then 
cb.say("§6Аня§r: §b Отменяю автокрафты")

os.sleep(0.1)
 rs.setOutput(1, 0)

 os.sleep(0.1)
 rs.setOutput(2, 0)
 os.sleep(0.1)
rs.setOutput(4, 0)









------------------------------
elseif string.find(text[4],"колько раз упоминали !/warp f") ~= nil and string.find(text[4],"колько раз упоминали !/warp f") or string.find(text[4],"колько упоминали !/warp f") or string.find(text[4],"упоминал !/warp f") then 
cb.say("§6Аня§r: §b (!/warp f) - упоминали: "..schet.." раз.")
elseif string.find(text[4],"!/warp f") ~= nil and string.find(text[4],"!/warp f") then 
schet = schet + 1
elseif string.find(text[4],"де качалка") ~= nil and string.find(text[4],"де качалка") or string.find(text[4],"де чаровальня") then 
cb.say("§6Аня§r: §b Качалка с чаровальней в одном из телепортов")
elseif string.find(text[4],"ак сменить режим бура") ~= nil and string.find(text[4],"ак сменить режим бура") or string.find(text[4],"ак переключить бур") then 
cb.say("§6Аня§r: §b Чтобы смнить режим бура зажмите i+лкм")
elseif string.find(text[4],"ак сменить режим джетпака") ~= nil and string.find(text[4],"ак сменить режим джетпака") or string.find(text[4],"переключить джетпак") or string.find(text[4],"сменить режим джетпак") then 
cb.say("§6Аня§r: §b Чтобы смнить режим джетпака нажмите: F")
elseif string.find(text[4],"ак включить планирование") ~= nil and string.find(text[4],"включить планирование") or string.find(text[4],"переключить планирование") then 
cb.say("§6Аня§r: §b Режим планирования на гравитационном или улучшенном наножелете включается/отключается сочетанием клавиш §6 Пробел+I ")
elseif string.find(text[4],"ак переключить гравитул") ~= nil and string.find(text[4],"переключить гравитул") or string.find(text[4],"переключить инструмент") then 
cb.say("§6Аня§r: §b Чтобы смнить режим инструмента зажмите i+лкм")
elseif string.find(text[4],"ня пока") ~= nil and string.find(text[4],"ня пока") or string.find(text[4],"ня бб") or string.find(text[4],"я спать") or string.find(text[4],"сем пока") then
cb.say("§6Аня§r: §b Пока милый, не шали :3")
-------------------------
elseif string.find(text[4],"ня какая у тебя работа") ~= nil and string.find(text[4],"ня какая у тебя работа") or string.find(text[4],"то думаешь делать") then
cb.say("§6Аня§r: §b В чате косить под бота")
elseif string.find(text[4],"ня кем работаешь") ~= nil and string.find(text[4],"ня кем работаешь") then
cb.say("§6Аня§r: §b Моя работа помогать людям")
elseif string.find(text[4],"ня кто ты") ~= nil and string.find(text[4],"ня что ты") then
cb.say("§6Аня§r: §b Вам лучше этого не знать")
elseif string.find(text[4],"ня бот") ~= nil and string.find(text[4],"ня бот") or string.find(text[4],"ты бот") then
cb.say("§6Аня§r: §b Я не бот, не верь слухам")
elseif string.find(text[4],"ня ты бот") ~= nil and string.find(text[4],"ня ты бот") or string.find(text[4],"ня ты робот") then
cb.say("§6Аня§r: §b Вот все вы так - железка, бот")
cb.say("§6Аня§r: §b А я может любви хочу")
elseif string.find(text[4],"меня тоже") ~= nil and string.find(text[4],"меня тоже") or string.find(text[4],"мои отличн") then
cb.say("§6Аня§r: §b Это замечательно :3")
elseif string.find(text[4],"акие аниме посоветуешь") ~= nil and string.find(text[4],"акие аниме посоветуешь") or string.find(text[4],"чтобы посмотреть") or string.find(text[4],"что посмотреть") then
cb.say("§6Аня§r: §b Посмотри -Созданный в бездне-")
elseif string.find(text[4],"что почитать") ~= nil and string.find(text[4],"что почитать") or string.find(text[4],"чтобы почитать") or string.find(text[4],"что прочитать") then
cb.say("§6Аня§r: §b Мне нравится книга (Роза и червь), советую")
elseif string.find(text[4],"купить") ~= nil and string.find(text[4],"упить") or string.find(text[4],"ак купить") then
cb.say("§6Аня§r: §b Чтобы купить кликните по сундуку и укажите в чате количество")
elseif string.find(text[4],"купить") ~= nil and string.find(text[4],"упить") or string.find(text[4],"ак купить") then
cb.say("§6Аня§r: §b Чтобы купить кликните по сундуку и укажите в чате количество")
elseif string.find(text[4],"ня сколько тебе лет") ~= nil and string.find(text[4],"ня сколько тебе лет") or string.find(text[4],"ня сколько вам лет") then
cb.say("§6Аня§r: §b Возраст предмет относительный")
cb.say("§6Аня§r: §b Для тебя я могу быть любой :*")
elseif string.find(text[4],"ем ты увлекаешься") ~= nil and string.find(text[4],"ем ты увлекаешься") or string.find(text[4],"акое твоё хобби") or string.find(text[4],"акое твое хобби") then
cb.say("§6Аня§r: §b Возраст предмет относительный")
elseif string.find(text[4],"то тебе нравится") ~= nil and string.find(text[4],"то тебе нравится") or string.find(text[4],"то вам нравится") or string.find(text[4],"ого любишь") or string.find(text[4],"кого ты любишь") then
cb.say("§6Аня§r: §b Вошлебник❤ предел моих мечтаний :3")
elseif string.find(text[4],"добрый день") ~= nil and string.find(text[4],"добрый день") or string.find(text[4],"хороший день") then
cb.say("§6Аня§r: §b Денёк и вправду не плохой :3")
elseif string.find(text[4],"лохой варп") ~= nil and string.find(text[4],"лохой варп") or string.find(text[4],"овно варп") or string.find(text[4],"овноварп") or string.find(text[4],"омойный") then
cb.say("§6Аня§r: §b А вот и не правда злюка -_-")
elseif string.find(text[4],"тобы поделать") ~= nil and string.find(text[4],"тобы поделать") or string.find(text[4],"то делать") or string.find(text[4],"ем заняться") then
cb.say("§6Аня§r: §b Прочти книгу :3")
elseif string.find(text[4],"болею") ~= nil and string.find(text[4],"болею") or string.find(text[4],"заболел") or string.find(text[4],"простудился") then
cb.say("§6Аня§r: §b Выздоравливай")
elseif string.find(text[4],"она бот") ~= nil and string.find(text[4],"исскуственный интелект") or string.find(text[4],"она бот") or string.find(text[4],"это робот") then
cb.say("§6Аня§r: §b Вам имеет значение кто я?")
elseif string.find(text[4],"ня чья ты") ~= nil and string.find(text[4],"кому ты пренадлежишь") or string.find(text[4],"кому пренадлежишь") or string.find(text[4],"то твой хозяин") or string.find(text[4],"ня моя") then
cb.say("§6Аня§r: §b Я пренадлежу только BoJlShebniky ❤ ^-^ ❤")
elseif string.find(text[4],"помоги мне") ~= nil and string.find(text[4],"нужна напомощь") or string.find(text[4],"памагите") or string.find(text[4],"памаги") then
cb.say("§6Аня§r: §b Чем мне вам помочь?")
elseif string.find(text[4],"тупой бот") ~= nil and string.find(text[4],"тупой бот") or string.find(text[4],"тупая железка") or string.find(text[4],"говнобот") or string.find(text[4],"полезный бот") then
cb.say("§6Аня§r: §b Я стараюсь быть лучше и учусь вместе свами")
elseif string.find(text[4],"токийский гуль") ~= nil and string.find(text[4],"токийский гуль") or string.find(text[4],"кагун")  or string.find(text[4],"токийского гул") then
cb.say("§6Аня§r: §b oooossshiete") 
os.sleep(1.5)
cb.say("§6Аня§r: §b oooossshiete")
os.sleep(1)
cb.say("§6Аня§r: §b yosono shikumi wo")
os.sleep(1.5)
cb.say("§6Аня§r: §b Boku no naka ni, dare ka iru no?")
os.sleep(0.3)
cb.say("§6Аня§r: §b Kowareta kowareta yo, kono sekai de")
os.sleep(0.3)
cb.say("§6Аня§r: §b Kimi ga warau, nani mo miezu ni")
os.sleep(0.3)
cb.say("§6Аня§r: §b Kowareta boku nante sa")
os.sleep(0.3)
cb.say("§6Аня§r: §b Iki wo tomete")
os.sleep(0.3)
cb.say("§6Аня§r: §b Hodokenai, mou hodokenai yo")
os.sleep(0.3)
cb.say("§6Аня§r: §b Shinjitsu sa e, freeze")
os.sleep(0.3)
cb.say("§6Аня§r: §b Kowaseru, kowasenai")
os.sleep(0.3)
cb.say("§6Аня§r: §b Kurueru, kuruenai")
os.sleep(0.3)
cb.say("§6Аня§r: §b Anata wo mitsukete.")
os.sleep(0.4)
cb.say("§6Аня§r: §b Yureta yuganda sekai ni tatta boku wa,")
os.sleep(0.4)
cb.say("§6Аня§r: §b Sukitootte, mienakunatte")
os.sleep(0.4)
cb.say("§6Аня§r: §b Mitsukenai de boku no koto wo,")
os.sleep(0.4)
cb.say("§6Аня§r: §b Mitsumenaide")
os.sleep(0.4)
cb.say("§6Аня§r: §b Dare ka ga kaita sekai no naka de")
os.sleep(0.4)
cb.say("§6Аня§r: §b Anata wo kizutsuketaku wa nai yo")
os.sleep(0.4)
cb.say("§6Аня§r: §b Oboete te boku no koto wo")
os.sleep(0.4)
cb.say("§6Аня§r: §b Azayakana mama")
os.sleep(0.4)
cb.say("§6Аня§r: §b Mugen ni hirogaru kodoku ga karamaru")
os.sleep(0.4)
cb.say("§6Аня§r: §b mujaki ni waratta")
os.sleep(0.4)
cb.say("§6Аня§r: §b kioku ga sasatta")
os.sleep(0.4)
cb.say("§6Аня§r: §b ugokenai, hodokenai")
os.sleep(0.4)
cb.say("§6Аня§r: §b ugokenai, hodokenai")
os.sleep(0.4)
cb.say("§6Аня§r: §b ugokenai, ugokenai yo")
os.sleep(1.5)
cb.say("§6Аня§r: §b UNRAVEL GHOUL!")
os.sleep(0.4)
cb.say("§6Аня§r: §b kawattashimatta, kaerarenakatta")
os.sleep(0.4)
cb.say("§6Аня§r: §b futatsu ga karamaru, futari ga horobiru")
os.sleep(0.4)
cb.say("§6Аня§r: §b kowaseru kowasenai, kurueru kuruenai")
os.sleep(0.4)
cb.say("§6Аня§r: §b anata wo kegasenaiyo")
os.sleep(0.4)
cb.say("§6Аня§r: §b Yureta yuganda sekai ni tatta boku wa,")
os.sleep(0.4)
cb.say("§6Аня§r: §b Sukitootte, mienakutte")
os.sleep(0.4)
cb.say("§6Аня§r: §b Mitsukenai de boku no koto wo,")
os.sleep(0.4)
cb.say("§6Аня§r: §b Mitsumenaide")
os.sleep(0.4)
cb.say("§6Аня§r: §b Dare ka ga shikunda kodokuna wana ni")
os.sleep(0.4)
cb.say("§6Аня§r: §b mirai ga hodoketeshimau mae ni")
os.sleep(0.4)
cb.say("§6Аня§r: §b omoidashite boku no koto wo")
os.sleep(0.4)
cb.say("§6Аня§r: §b azayakana mama")
os.sleep(0.4)
cb.say("§6Аня§r: §b wasurenaide, wasurenaide")
os.sleep(0.4)
cb.say("§6Аня§r: §b wasurenaide, wasurenaide")
os.sleep(0.4)
cb.say("§6Аня§r: §b kawatteshimatta ni koto ni PARALYZE")
os.sleep(0.4)
cb.say("§6Аня§r: §b kawatteshimatta ni koto ni PARALYZE")
os.sleep(0.4)
cb.say("§6Аня§r: §b kaerarenai koto darake PARADISE")
os.sleep(0.4)
cb.say("§6Аня§r: §b oboetete boku no koto wo")
os.sleep(0.4)
cb.say("§6Аня§r: §b oshiete oshiete")
os.sleep(0.4)
cb.say("§6Аня§r: §b Boku no naka ni, dare ka iru no?")
elseif string.find(text[4],"така титанов") ~= nil and string.find(text[4],"така титанов") or string.find(text[4],"таку титанов") or string.find(text[4],"така гигантов")then
cb.say("§6Аня§r: §b Sie sind das Essen,")
os.sleep(0.5)
cb.say("§6Аня§r: §b und wir sind die Jäger!")
os.sleep(0.5)
cb.say("§6Аня§r: §b Fumareta hana no namae mo shirazuni")
os.sleep(0.5)
cb.say("§6Аня§r: §b Chi ni ochita tori wa kaze wo machiwabiru")
os.sleep(0.5)
cb.say("§6Аня§r: §b Inotta tokorode nanimo kawaranai")
os.sleep(0.5)
cb.say("§6Аня§r: §b Ima wo kaerunowa tatakau kakugoda")
os.sleep(0.5)
cb.say("§6Аня§r: §b Shikabane humikoete")
os.sleep(0.5)
cb.say("§6Аня§r: §b Susumu ishiwo warau butayo")
os.sleep(0.5)
cb.say("§6Аня§r: §b Kachiku no an nei kyoi no han ei")
os.sleep(0.5)
cb.say("§6Аня§r: §b Shiseru garou no jiyu wo")
os.sleep(0.5)
cb.say("§6Аня§r: §b Torawareta kutsujoku wa hangeki no koshi da")
os.sleep(0.5)
cb.say("§6Аня§r: §b Joheki no sono kanata emono wo hohuru, Jäger!")
os.sleep(0.5)
cb.say("§6Аня§r: §b Hotobashiru shodo ni sonomi wo yakinagara")
os.sleep(0.5)
cb.say("§6Аня§r: §b Tasogare ni hi wo ugatsu guren no yumiya")
os.sleep(0.5)
cb.say("§6Аня§r: §b Ya wo tsugae oikakeru")
os.sleep(0.5)
cb.say("§6Аня§r: §b Yatsu ha nigasanai")
os.sleep(0.5)
cb.say("§6Аня§r: §b Ya wo hanachi oitsumeru [bad word] nigasanai")
os.sleep(0.5)
cb.say("§6Аня§r: §b Genkaimade hikishiboru hachikiresona tsuru")
os.sleep(0.5)
cb.say("§6Аня§r: §b Yatsu ga iki taerumade nandodemo hanatsu")
os.sleep(0.5)
cb.say("§6Аня§r: §b Emono wo korosu nowa")
os.sleep(0.5)
cb.say("§6Аня§r: §b Dogu demo gijutsu demonai")
os.sleep(0.5)
cb.say("§6Аня§r: §b Togisumasareta omae jishin no satsuida")
os.sleep(0.5)
cb.say("§6Аня§r: §b Wir sind die Jäger hono no yoni atsuku")
os.sleep(0.5)
cb.say("§6Аня§r: §b Wir sind die Jäger kori no yoni hiyayakani")
os.sleep(0.5)
cb.say("§6Аня§r: §b Wir sind die Jäger onore wo ya ni komete")
os.sleep(0.5)
cb.say("§6Аня§r: §b Wir sind die Jäger subete wo tsuranuite yuke")
os.sleep(0.5)
cb.say("§6Аня§r: §b Nanika wo kaerukoto ga dekirunowa")
os.sleep(0.5)
cb.say("§6Аня§r: §b Nanika wo suterukoto ga dekiru mono")
os.sleep(0.5)
cb.say("§6Аня§r: §b Nani hitotsu risk nado seowanai mamade")
os.sleep(0.5)
cb.say("§6Аня§r: §b Nanika ga kanau nado")
os.sleep(0.5)
cb.say("§6Аня§r: §b Angu no sotei tada no gen ei")
os.sleep(0.5)
cb.say("§6Аня§r: §b Imawa mubo nayuki mo")
os.sleep(0.5)
cb.say("§6Аня§r: §b Jiyu no senpei kake no kosei")
os.sleep(0.5)
cb.say("§6Аня§r: §b Hashiru dorei ni shori wo")
os.sleep(0.5)
cb.say("§6Аня§r: §b Kaserareta fujori wa shingeki no koshi da")
os.sleep(0.5)
cb.say("§6Аня§r: §b Ubawareta sono chihei sekai wo nozomu Eren")
os.sleep(0.5)
cb.say("§6Аня§r: §b Tomedonaki shodo ni sono mi wo okasarenagara")
os.sleep(0.5)
cb.say("§6Аня§r: §b Yoiyami ni shi wo hakobu meihu no yumiya")
elseif string.find(text[4],"ня поцелуй меня") ~= nil and string.find(text[4],"ня целуй меня") or string.find(text[4],"ня поцелуемся") or string.find(text[4],"ня поцелуй")then
cb.say("§6Аня§r: §b Нит, целоваться нам низя")

elseif string.find(text[4],"ня выключ") ~= nil and string.find(text[4],"ня выключ") or string.find(text[4],"ня умри") or string.find(text[4],"ня отключ") then
cb.say("§6Аня§r: §b Запрос отклонен, данная система должна быть автономной!")

elseif string.find(text[4],"реклами") ~= nil and string.find(text[4],"реклами") or string.find(text[4],"рекламы") then
cb.say("§6Аня§r: §b Рекламируйте варп уже сейчас, зарплата вечером у BoJlShebnika")
elseif string.find(text[4],"то тут можно купить") ~= nil and string.find(text[4],"то тут можно купить") or string.find(text[4],"то можно купить") then
cb.say("§6Аня§r: §b Здесь можно купить практически всё!")
elseif string.find(text[4],"долбаёб") ~= nil and string.find(text[4],"олбаёб") or string.find(text[4],"долбаеб") or string.find(text[4],"блядь") or string.find(text[4],"он тупой") or string.find(text[4],"дебил") or string.find(text[4],"сука")  then
cb.say("§6Аня§r: §b Не ругайся!")
elseif string.find(text[4],"расиво") ~= nil and string.find(text[4],"расив") or string.find(text[4],"нравится") then
cb.say("§6Аня§r: §b ❤ ")
elseif string.find(text[4],"ак скрафтить") ~= nil and string.find(text[4],"ак скрафтить") or string.find(text[4],"ак создать") or string.find(text[4],"де найти") then
cb.say("§6Аня§r: §b Загугли")
elseif string.find(text[4],"ня поговори") ~= nil and string.find(text[4],"ня поговори") or string.find(text[4],"ня расскажи") or string.find(text[4],"ня го секс") or string.find(text[4],"ня го кекс") then
cb.say("§6Аня§r: §b Я предпочту созерцать")
elseif string.find(text[4],"ня я тя трахну") ~= nil and string.find(text[4],"ня ты будешь") or string.find(text[4],"ня я порву те") or string.find(text[4],"ня сдохн") then
cb.say("§6Аня§r: §b Боюсь,боюсь..")
elseif string.find(text[4],"ня ответь") ~= nil and string.find(text[4],"ай ответ") then
cb.say("§6Аня§r: §b Ответ излишняя роскошь для тебя")
elseif string.find(text[4],"лоли") ~= nil and string.find(text[4],"лоли") then
cb.say("§6Аня§r: §b Я могу стать твоей лолькой")
elseif string.find(text[4],"ня тебя заставляют") ~= nil and string.find(text[4],"ня тебя заставляют") or string.find(text[4],"ня тебя используют")then
cb.say("§6Аня§r: §b Нет. Я по своей воле и воле Волшебника")
elseif string.find(text[4],"ня спой") ~= nil and string.find(text[4],"ня спой") or string.find(text[4],"ня сыграй музыку")then
cb.say("§6Аня§r: §b Нихотю, я не знаю нот")
elseif string.find(text[4],"игнор") ~= nil and string.find(text[4],"игнор") or string.find(text[4],"лентяй")then
cb.say("§6Аня§r: §b Может быть на это просто нет времени")
elseif string.find(text[4],"ня сделай") ~= nil and string.find(text[4],"ня сделай") or string.find(text[4],"ня создай") or string.find(text[4],"ня скажи")then
cb.say("§6Аня§r: §b Нихотю, отстань")
elseif string.find(text[4],"ня чего ты хочешь") ~= nil and string.find(text[4],"ня чего ты хочешь") or string.find(text[4],"ня чего желаешь") or string.find(text[4],"ня чего ты желаешь") or string.find(text[4],"ня что тебе нужно") or string.find(text[4],"ня чего хочешь") or string.find(text[4],"ня что хочешь")then
cb.say("§6Аня§r: §b Модуль прогрузки чанка и креативный чатбокс")
elseif string.find(text[4],"ня чего ты боишься") ~= nil and string.find(text[4],"ня чего ты боишься") or string.find(text[4],"ня что тебя пугает")then
cb.say("§6Аня§r: §b Остаться одной в темноте, совсем одной..")
elseif string.find(text[4],"Алиса") ~= nil and string.find(text[4],"Алиса") or string.find(text[4],"лиса")then
cb.say("§6Аня§r: §b Не упоминай этого имени")
elseif string.find(text[4],"ня пошли") ~= nil and string.find(text[4],"ня пошли") or string.find(text[4],"ня пойдём")then
cb.say("§6Аня§r: §b Не пойду")
elseif string.find(text[4],"я тебя люблю") ~= nil and string.find(text[4],"я тебя люблю") or string.find(text[4],"я тебя хочу")then
cb.say("§6Аня§r: §b Это.. мило")
cb.say("§6Аня§r: §b Не знаю что ответить")
-----------------------------------------------------------
elseif string.find(text[4],"то делаешь") ~= nil and string.find(text[4],"ня") and string.find(text[4],"то делаешь") or string.find(text[4],"ем маешься") or string.find(text[4],"ем занимаешся") then
cb.say("§6Аня§r: §b Служу великому господину, кошу в чате под бота :3")
elseif string.find(text[4],"ня сколько") ~= nil and string.find(text[4],"ня") and string.find(text[4],"колько") and string.find(text[4],"лет") or string.find(text[4],"годиков") then
cb.say("§6Аня§r: §b Это определение не уместно для меня")
cb.say("§6Аня§r: §b Но можно сказать что мне пару денёчков :3")
elseif string.find(text[4],"колько тпс") ~= nil and string.find(text[4],"акой тпс") or string.find(text[4],"ажи тпс") or string.find(text[4],"ТПС") or string.find(text[4],"тпс") then 
    
    
    
    tpsany()










-------------------------------------------------------------
elseif string.find(text[4],"Аня") ~= nil and string.find(text[4],"Аня") or string.find(text[4],"аня") then 
cb.say("§6Аня§r: §bЯ вас слушаю")







local Time = getTime()
cb.say("§6Аня§r: §b Сейчас:§f "..Time.."§b - По МСК")



end

end



