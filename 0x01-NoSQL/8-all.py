#!/usr/bin/env python3
""" Using Pymongo """


def list_all(mongo_collection):
    """ lists all documents in a collection """
    documents = mongo_collection.find()

    if documents == 0:
        return []
    return documents
