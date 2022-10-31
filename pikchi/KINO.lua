 local pim=require("component").pim
 local event=require("event")
 local term = require('term')
 local prokrutki = 50
 local CHEST_SIDE = 'south'
 local emi = 1
 --предметы, которые подлежат конфискации
 ITEMS = {'Money'}
  term.clear()
function zastavka()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/zastavka.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function zastavka2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/denginety.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function zastavka3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/prosmotr.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function meny()
local component = require("component")
local term = require("term")
local event = require("event")
local gpu = component.gpu
     term.clear()
     zastavka()
     gpu.setForeground(0x000000)
     gpu.setBackground(0xFFFFFF)
    -- gpu.fill(40, 50, 50, 50, ' ')
    gpu.set(70, 20, 'Автор BoJlShebnik')
    gpu.set(65, 23, 'Стоимость просмотра 1 эм')
    gpu.set(57, 24, 'Оплачивая услугу вы принимаете правила сервиса')
    gpu.set(57, 25, 'и несёте ответственность за увиденный кем-то контент 18+')
    gpu.set(57, 26, 'Для просмотра фльма требуется внести деньги')
    gpu.set(74, 28, 'Выбор фильмов:')
     gpu.setForeground(0xFF4500)
     gpu.setBackground(0xFFA07A)
     gpu.set(52, 30, '   Аниме    ')
     gpu.set(52, 31, '    для 18+ ')
     gpu.set(52, 32, ' мальчиков  ')
     gpu.setForeground(0x00FF00)
     gpu.setBackground(0xFF00FF)
     gpu.set(72, 30, '              ')
     gpu.set(72, 31, 'Одинокий шалун')
     gpu.set(72, 32, '      18+     ')
     gpu.setForeground(0xFFFFFF)
     gpu.setBackground(0x000000)
     gpu.set(95, 30, '  Больше    ')
     gpu.set(95, 31, '    и       ')
     gpu.set(95, 32, '  жёстче    ')
end
function image1()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/popochan.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn1.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn2.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn3.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image5()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn4.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image6()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn5.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image7()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn6.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image8()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn7.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function image9()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn8.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima1()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn9.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/holo2.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/holo3.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end

function ima3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn10.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end

function ima4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/holo4.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art1.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima5()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art2.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima6()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn11.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima7()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/holo5.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima8()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn12.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function ima9()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn13.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img1()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn14.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art3.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn15.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art4.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img5()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn16.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img6()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn17.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img7()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn18.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img8()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn19.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function img9()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn20.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1g()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn21.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1g2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn22.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1g3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn23.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end

function im1g4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn24.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1g5()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn25.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function imeeg()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn26.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end

function im1g7()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn27.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1g8()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn28.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1g9()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn29.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge1()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/porn30.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end









function im1ge2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/kiberpank1.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/kiberpank2.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art18.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge5()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art6.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge6()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art7.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge7()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art8.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge8()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art9.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function im1ge9()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art10.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end


function i1m1ge1()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art11.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function i1m1ge2()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art12.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function i1m1ge3()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art19.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function i1m1ge4()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art14.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end

function i1m1ge5()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art15.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function i1m1ge6()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art16.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end
function i1m1ge7()
image = require("image")
buffer = require("doubleBuffering")
img = image.load("/home/art17.pic")
buffer.drawImage(1, 1, img)
buffer.drawChanges()
end











 function scanPlayer()
  while true do
  
      term.clear()
      meny()

          e, nick, uuid, adr  = event.pull('player_on')
        
      for i = 1, 40 do
        if pim.getStackInSlot(i) then
          local count = pim.getStackInSlot(i).qty
          
             for j = 1, #ITEMS do
               if pim.getStackInSlot(i).display_name == ITEMS[j] then 



                if count >= emi then
                 pim.pushItemIntoSlot(CHEST_SIDE, i,emi)
                 count = count - emi
   


zastavka3()

for i = 1, prokrutki do -- цикл от 1 до 10 с шагом 1
os.sleep(2)
image1()
os.sleep(2)
image2()
os.sleep(2)
img1()
os.sleep(2)  -- porn
ima3()
os.sleep(2)  -- porn
image3()
os.sleep(2)
image5()
os.sleep(2)
image6()
os.sleep(2)
image4()
os.sleep(2)
ima1()
os.sleep(2) 
image7()    -- holo
os.sleep(2)
ima2()
os.sleep(2)
ima4()
os.sleep(2)
ima7()
os.sleep(2)
ima5()
os.sleep(2)
ima8()
os.sleep(2)
ima9()
os.sleep(2)
image9()   
os.sleep(2)-- bds
image8()
os.sleep(2) -- bds
ima6()
os.sleep(2)
img2()
os.sleep(2)
img3()
os.sleep(2)
img4()
os.sleep(2)
img5()
os.sleep(2)
img6()
os.sleep(2)
img7()
os.sleep(2)
img8()
os.sleep(2)
img9()
os.sleep(2)
im1g()
os.sleep(2)
im1g2()
os.sleep(2)
im1g3()
os.sleep(2)
im1g4()
os.sleep(2)
im1g5()
os.sleep(2)
imeeg()
os.sleep(2)
im1g7()
os.sleep(2)
im1g8()
os.sleep(2)
im1g9()
os.sleep(2)
im1ge1()
os.sleep(2)



im1ge2()
os.sleep(2)
im1ge3()
os.sleep(2)
im1ge4()
os.sleep(2)
im1ge5()
os.sleep(2)
im1ge6()
os.sleep(2)
im1ge7()
os.sleep(2)
im1ge8()
os.sleep(2)
im1ge9()
os.sleep(2)
i1m1ge1()
os.sleep(2)
i1m1ge2()
os.sleep(2)
i1m1ge3()
os.sleep(2)
i1m1ge4()
os.sleep(2)
i1m1ge5()
os.sleep(2)
i1m1ge6()
os.sleep(2)
i1m1ge7()
os.sleep(2)








end
   else
                 end
                 break
              end
          end  
        end
      end
   zastavka2()

os.sleep(2)
  end
 end
 
 scanPlayer()