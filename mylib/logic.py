import wikipedia
from textblob import TextBlob

def wiki(name="war godness", length=1):
    """ "This is a beautiful wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, length)

    return my_wiki

def search_wiki(name):
    """" Search Wikipedia for names"""
    result = wikipedia.search(name)
    return result

def pharse(name):
    """" Return pharse from wikipedia"""
    page = wiki(name)
    blob = TextBlob(page)
    return blob.noun_phrases
