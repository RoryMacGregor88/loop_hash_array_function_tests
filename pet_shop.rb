#1
def pet_shop_name(arr); return arr[:name] end
#2
def total_cash(arr); return arr[:admin][:total_cash] end
#3
def add_or_remove_cash(arr, num); arr[:admin][:total_cash] += num end
#4
def pets_sold(arr); return arr[:admin][:pets_sold] end
#5
def increase_pets_sold(arr, num); arr[:admin][:pets_sold] += num end
#6
def stock_count(arr); return arr[:pets].length end
#7
def pets_by_breed(arr, breed)
  total = []
  arr[:pets].each do |i| total << i[:breed] if i[:breed] == breed end
  return total
end
#8
def find_pet_by_name(arr, name)
  arr[:pets].each do |i| return i if i[:name] == name end
end
#9
def find_pet_by_name(arr, name)
  arr[:pets].each do |i| return i if i[:name] == name end
  return nil
end
#10
def remove_pet_by_name(arr, name)
  arr[:pets].each do |i| arr[:pets].delete(i) if i[:name] == name end
end
#11
def add_pet_to_stock(arr, pet); arr[:pets].to_a << pet end
#12
def customer_cash(customer); return customer[:cash] end
#13
def remove_customer_cash(customer, amount); customer[:cash] -= amount end
#14
def customer_pet_count(customer); return customer[:pets].count end
#15
def add_pet_to_customer(customer, pet); customer[:pets].to_a << pet end
#16
def customer_can_afford_pet(customer, pet)
  return true if customer[:cash] > pet[:price]
  return false
end
#17
def sell_pet_to_customer(arr, hash, customer)
  for i in arr[:pets]
    if i == hash && customer[:cash] > hash[:price]
      customer[:pets] << hash
      arr[:admin][:pets_sold] += 1
      customer[:cash] -= hash[:price]
      arr[:admin][:total_cash] += hash[:price]
    end
  end
end
