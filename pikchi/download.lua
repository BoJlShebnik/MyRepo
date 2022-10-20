local shell = require("shell")
local fs = require("filesystem")

--Массив с программами, которые необходимо загрузить.
--Первый элемент - ссылка на файл, второй - путь для сохранения файла.
local applications = {
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

--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn15.pic", "/home/porn15.pic" },

--{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn15.pic", "/home/porn15.pic" },

}

--Загружаем файлы
for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")		
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")

