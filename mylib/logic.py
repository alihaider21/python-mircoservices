import wikipedia


def wiki(name="war godness", length=1):
    """ "This is a beautiful wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, length)

    return my_wiki
