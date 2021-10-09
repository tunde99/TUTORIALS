class Shirt:
    """The Shirt class represent a clothing article sold in a store
    """

    def __init__(self, colour, size, style, price):
        """Method for initialising a Shirt object

        Args:
            colour (str)
            size (str)
            style (str)
            price (float)

        Attributes:
            colour (str): colour of a Shirt object
            size (str): size of a Shirt object
            style (str): style of a Shirt object
            price (float): price of a Shirt object
        """
        self.colour = colour
        self.size = size
        self.style = style
        self.price = price
    
    #@property
    def get_price(self):
        """The get_price method returns the price of a Shirt object

        Args: None

        Returns: price of a Shirt object
        """
        return self.price

   # @get_price.setter
    def change_price(self, new_price):
        """The change_price method changes the price of a Shirt object

        Args:
            new_price (float): the new price of a Shirt object

        Returns: None
        """
        self.price = new_price
    
    def discount(self, discount_factor):
        """The discount method returns the discounted price of a Shirt object

        Args:
            discount_factor (float): the discount rate of a Shirt object

        Returns: the discounted price
        """
        return self.price * (1 - discount_factor)