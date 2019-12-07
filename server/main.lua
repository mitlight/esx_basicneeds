ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_basicneeds:removeItem')
AddEventHandler('esx_basicneeds:removeItem', function(item)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem(item, 1)

end)

RegisterServerEvent('esx_basicneeds:updateStatus')
AddEventHandler('esx_basicneeds:updateStatus', function(type, count)
	
	TriggerClientEvent('esx_status:add', source, type, count)

end)

-- Eating
ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01', 'bread', 'hunger', 200000, 'กิน <strong class="green-text">ขนมปัง</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('burger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01', 'burger', 'hunger', 500000, 'กิน <strong class="green-text">เบอเกอร์เนื้อดับเบิ้ลชีส</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('hotdog', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_hotdog_01', 'hotdog', 'hunger', 300000, 'กิน <strong class="green-text">ฮอทดอก</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('taco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_taco_01', 'taco', 'hunger', 300000, 'กิน <strong class="green-text">ทาโก้</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('sanwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_sandwich_01', 'sanwich', 'hunger', 250000, 'กิน <strong class="green-text">แซนวิสปลา</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('donut1', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_donut_01', 'donut1', 'hunger', 200000, 'กิน <strong class="brown-text">โดนัท</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('donut2', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_donut_02', 'donut2', 'hunger', 200000, 'กิน <strong class="brown-text">โดนัท ช็อกโกแลต</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('pie', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_food_bs_chips', 'pie', 'hunger', 350000, 'กิน <strong class="green-text">พายไก่</strong> 1 ชิ้น')
end)

-- Drink
ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_flow_bottle', 'water', 'thirst', 200000, 'ดื่ม <strong class="blue-text">น้ำ</strong> 1 ขวด')
end)

ESX.RegisterUsableItem('cola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ecola_can', 'cola', 'thirst', 150000, 'ดื่ม <strong class="blue-text">น้ำโคล่า</strong> 1 กระป๋อง')
end)

ESX.RegisterUsableItem('coffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onDrink2', source, 'p_amb_coffeecup_01', 'coffee', 'thirst', 100000, 'ดื่ม <strong class="brown-text">กาแฟ</strong> 1 แก้ว')
end)

ESX.RegisterUsableItem('juice', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_can_01', 'juice', 'thirst', 500000, 'ดื่ม <strong class="orange-text">น้ำผลไม้</strong> 1 กระป๋อง')
end)