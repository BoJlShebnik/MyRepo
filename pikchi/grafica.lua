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








image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn3.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()


