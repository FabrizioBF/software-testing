import coverage_app_1
import unittest

class TestAdd(unittest.TestCase):
    """
    Test the add function from the coverage_app_1
    """
    
    def test_add_integers(self):
        """
        Test addition of two integers
        """
        result = coverage_app_1.add(3, 99)
        self.assertEqual(result, 102)

    def test_add_floats(self):
        """
        Test addition of two floats
        """
        result = coverage_app_1.add(3.5, 8.0)
        self.assertEqual(result, 11.5)
        
        
if __name__ == '__main__':
    unittest.main()
