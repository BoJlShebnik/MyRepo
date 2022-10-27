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
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn16.pic", "/home/porn16.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn17.pic", "/home/porn17.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn18.pic", "/home/porn18.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn19.pic", "/home/porn19.pic" },
{ "https://github.com/BoJlShebnik/MyRepo/raw/main/pikchi/kartinkipic/porn20.pic", "/home/porn20.pic" },
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

}

--Загружаем файлы
for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")		
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")

