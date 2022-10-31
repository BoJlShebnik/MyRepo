


local function Control()

function vizov_image()
local ssilka = {


'/home/holo4.pic', 
'/home/animepara.pic', 
'/home/luiza.pic', 
--'/home/anime1.pic', 
--'/home/anime2.pic', 
'/home/anime3.pic', 
'/home/anime4.pic', 
'/home/anime5.pic', 
'/home/anime6.pic', 
'/home/anime7.pic', 
'/home/anime8.pic', 



---------------------------------
-----------porno-----------------
---------------------------------	
'/home/popochan.pic', 
'/home/porn1.pic', 
'/home/porn2.pic',
'/home/porn3.pic',
'/home/porn4.pic',
'/home/porn5.pic',
'/home/porn6.pic',
'/home/porn7.pic',
'/home/porn8.pic',
'/home/porn9.pic',
'/home/porn4.pic', 
'/home/holo2.pic',
'/home/holo3.pic',
'/home/porn10.pic',
'/home/holo4.pic',
'/home/art1.pic',
'/home/art2.pic',
'/home/porn11.pic',
'/home/holo5.pic',
'/home/porn12.pic',
'/home/porn13.pic',
'/home/porn14.pic',
'/home/art3.pic',
'/home/porn15.pic',
'/home/art4.pic',
'/home/porn16.pic',
'/home/porn17.pic',
'/home/porn18.pic',
'/home/porn19.pic',
'/home/porn20.pic',
'/home/porn21.pic',
'/home/porn22.pic',
'/home/porn23.pic',
'/home/porn24.pic',
'/home/porn25.pic',
'/home/porn26.pic',
'/home/porn27.pic',
'/home/porn28.pic',
'/home/porn29.pic',
'/home/porn30.pic',
'/home/kiberpank1.pic',
'/home/kiberpank2.pic',
'/home/art18.pic',
'/home/art6.pic',
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
'/home/luiza.pic'


}





for j = 1, #ssilka do  
image2 = ssilka[j] 
image = require("image")
buffer = require("doubleBuffering")
img = image.load(image2)
buffer.drawImage(1, 1, img)
buffer.drawChanges()  

os.sleep(1)
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


