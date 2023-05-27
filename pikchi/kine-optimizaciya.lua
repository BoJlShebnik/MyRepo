local shell = require("shell")
local fs = require("filesystem")

--Массив с программами, которые необходимо загрузить.
--Первый элемент - ссылка на файл, второй - путь для сохранения файла.
local applications = {
  { "https://raw.githubusercontent.com/krovyaka/OpenComputers-Casino/master/external/IgorTimofeev/AdvancedLua.lua", "/lib/advancedLua.lua" },
 {"https://raw.githubusercontent.com/krovyaka/OpenComputers-Casino/master/external/IgorTimofeev/Color.lua","/lib/color.lua"},
 {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/DoubleBuffering.lua","/lib/doubleBuffering.lua"},
 {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/Image.lua","/lib/image.lua"},
  {"https://github.com/krovyaka/OpenComputers-Casino/raw/master/external/IgorTimofeev/OCIF.lua","/lib/FormatModules/OCIF.lua"},


  
  { "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/popochan.pic", "/home/popochan.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn1.pic", "/home/porn1.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn2.pic", "/home/porn2.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn3.pic", "/home/porn3.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn4.pic", "/home/porn4.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn5.pic", "/home/porn5.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn6.pic", "/home/porn6.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/zastavka.pic", "/home/zastavka.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/denginety.pic", "/home/denginety.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/prosmotr.pic", "/home/prosmotr.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn7.pic", "/home/porn7.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn8.pic", "/home/porn8.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn9.pic", "/home/porn9.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/holo2.pic", "/home/holo2.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/holo3.pic", "/home/holo3.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn10.pic", "/home/porn10.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/holo4.pic", "/home/holo4.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art1.pic", "/home/art1.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art2.pic", "/home/art2.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn11.pic", "/home/porn11.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/holo5.pic", "/home/holo5.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn12.pic", "/home/porn12.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn13.pic", "/home/porn13.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn14.pic", "/home/porn14.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art3.pic", "/home/art3.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn15.pic", "/home/porn15.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art4.pic", "/home/art4.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn16.pic", "/home/porn16.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn17.pic", "/home/porn17.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn18.pic", "/home/porn18.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn19.pic", "/home/porn19.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn20.pic", "/home/porn20.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn21.pic", "/home/porn21.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn22.pic", "/home/porn22.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn23.pic", "/home/porn23.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn24.pic", "/home/porn24.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn25.pic", "/home/porn25.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn26.pic", "/home/porn26.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn27.pic", "/home/porn27.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn28.pic", "/home/porn28.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn29.pic", "/home/porn29.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn30.pic", "/home/porn30.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/animepar.pic", "/home/animepar.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/kiberpank1.pic", "/home/kiberpank1.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/kiberpank2.pic", "/home/kiberpank2.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art5.pic", "/home/art5.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art6.pic", "/home/art6.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art7.pic", "/home/art7.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art8.pic", "/home/art8.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art9.pic", "/home/art9.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art10.pic", "/home/art10.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art11.pic", "/home/art11.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art12.pic", "/home/art12.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art13.pic", "/home/art13.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art14.pic", "/home/art14.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art15.pic", "/home/art15.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art16.pic", "/home/art16.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art17.pic", "/home/art17.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art18.pic", "/home/art18.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/art19.pic", "/home/art19.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/luiza.pic", "/home/luiza.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime1.pic", "/home/anime1.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime2.pic", "/home/anime2.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime3.pic", "/home/anime3.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime4.pic", "/home/anime4.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime5.pic", "/home/anime5.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime6.pic", "/home/anime6.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime7.pic", "/home/anime7.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime8.pic", "/home/anime8.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime9.pic", "/home/anime9.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime10.pic", "/home/anime10.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime11.pic", "/home/anime11.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime12.pic", "/home/anime12.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime13.pic", "/home/anime13.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime14.pic", "/home/anime14.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime15.pic", "/home/anime15.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime16.pic", "/home/anime16.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime17.pic", "/home/anime17.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime18.pic", "/home/anime18.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime19.pic", "/home/anime19.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime20.pic", "/home/anime20.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real1.pic", "/home/real1.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real2.pic", "/home/real2.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real3.pic", "/home/real3.pic" },

{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/anime21.pic", "/home/anime21.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real4.pic", "/home/real4.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real5.pic", "/home/real5.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real6.pic", "/home/real6.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real7.pic", "/home/real7.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real9.pic", "/home/real9.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/real8.pic", "/home/real8.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/kiberpank3.pic", "/home/kiberpank3.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/kiberpank4.pic", "/home/kiberpank4.pic" },
--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/kiberpank5.pic", "/home/kiberpank5.pic" },

}















--Загружаем файлы
for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")   
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")



local function Control()
function vizov_image()
local ssilka = {
'/home/holo4.pic', 
'/home/animepar.pic', 
'/home/luiza.pic', 
'/home/anime3.pic', 
'/home/anime4.pic', 
'/home/anime5.pic', 
'/home/anime6.pic', 
'/home/anime7.pic', 
'/home/anime8.pic', 
'/home/anime9.pic', 
'/home/anime10.pic',
'/home/anime11.pic',
'/home/anime12.pic',
'/home/anime13.pic',
'/home/anime14.pic',
'/home/anime15.pic',
'/home/anime16.pic',
'/home/anime17.pic',
'/home/anime18.pic',
'/home/anime19.pic',
'/home/anime20.pic',
'/home/anime21.pic',
'/home/real1.pic',
'/home/real2.pic',
'/home/real4.pic',
'/home/real5.pic',
'/home/real7.pic',
'/home/real9.pic',
'/home/art2.pic',
'/home/art3.pic',
'/home/art4.pic',
'/home/art5.pic',
'/home/art7.pic',
'/home/art8.pic',
'/home/art9.pic',
'/home/art10.pic',
'/home/art11.pic',
'/home/art12.pic',
'/home/art19.pic',
'/home/art14.pic',
'/home/art15.pic',
'/home/art16.pic',
'/home/art17.pic',
'/home/art18.pic',
'/home/art19.pic',
'/home/porn26.pic',
'/home/porn5.pic',
'/home/porn9.pic',
'/home/porn3.pic',
'/home/porn23.pic',
'/home/porn19.pic',
'/home/porn21.pic',
'/home/popochan.pic', 
'/home/kiberpank1.pic',
'/home/kiberpank2.pic'

--[[ 
-----------------
-- не работают --
-----------------
'/home/art6.pic',
'/home/real6.pic',
'/home/real8.pic',
'/home/anime1.pic', 
'/home/anime2.pic', 
'/home/real3.pic'
'/home/kiberpank3.pic',
'/home/kiberpank4.pic',
'/home/kiberpank5.pic',
-----------------
-- не работают --
-----------------
]]
--[[

---------------------------------
-----------porno-----------------
---------------------------------	
'/home/porn1.pic', 
'/home/porn2.pic',
'/home/porn4.pic',
'/home/porn6.pic',
'/home/porn7.pic',
'/home/porn8.pic',
'/home/porn4.pic', 
'/home/holo2.pic',
'/home/holo3.pic',
'/home/porn10.pic',
'/home/holo4.pic',
'/home/art1.pic',
'/home/porn11.pic',
'/home/holo5.pic',
'/home/porn12.pic',
'/home/porn13.pic',
'/home/porn14.pic',
'/home/porn15.pic',
'/home/porn16.pic',
'/home/porn17.pic',
'/home/porn18.pic',
--'/home/porn20.pic',
'/home/porn22.pic',
'/home/porn24.pic',
'/home/porn25.pic',
'/home/porn27.pic',
'/home/porn28.pic',
'/home/porn29.pic',
'/home/porn30.pic',
 ]]



}


for j = 1, #ssilka do  
image2 = ssilka[j] 
image = require("image")
buffer = require("doubleBuffering")
img = image.load(image2)
buffer.drawImage(1, 1, img)
buffer.drawChanges()  
os.sleep(3)
end
end
while true do
vizov_image()
end
end

while true do
  local ok,err = pcall(Control)
  if not ok then
    print("Иди нах*й")
    pcall(Control)
    if type(err) == "table" then
        print("Ты че не понял?")
      pcall(Control)
    else
        print("Кыш!")
      pcall(Control)
    end
    
  end
end


