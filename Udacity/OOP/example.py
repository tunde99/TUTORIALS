from shirt import Shirt

if __name__ == '__main__':
    shirt_1 = Shirt('red', 'M', 'long_sleeved', 55)
    shirt_2 = Shirt('orange', 'S', 'short_sleeved', 30)

    print(shirt_1.get_price())
    print(shirt_2.get_price())
    
    print(shirt_1.discount(0.81))

    shirt_1.change_price(60)
    print(shirt_1.discount(0.81))
