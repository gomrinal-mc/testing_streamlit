# test_app.py

def test_capitalize_string2():
    """ test 11"""
    s = "helloworld"
    if not isinstance(s, str):
        raise TypeError('Please provide a string')
    return s.capitalize()

