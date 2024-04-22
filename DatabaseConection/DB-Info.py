from pymongo import MongoClient as mongo

def getDabataseData():
    client = mongo('localhost', 27017)
    db = client['Curso_Alura_Database']
    collection = db['Curso-Alura_Coleção']

    # Consulta para extrair dados
    data = collection.find({})

    # Processar os dados para uma lista
    result = []
    for document in data:
        result.append(document)

    return result

if __name__ == "__main__":
    mongodb_data = getDabataseData()
    print(mongodb_data)