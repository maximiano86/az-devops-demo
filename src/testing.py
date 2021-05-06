from app import sample_function
    
def test_sample_function():
    assert sample_function('!', 3) == '!!!'
