from pymongo import MongoClient as mongo

def get_mongodb_data():
    client = mongo('localhost', 27017)
    db = client['Curso_Alura_Database']
    collection = db['Curso-Alura_Coleção']

    # Consulta para extrair dados
    data = collection.find({})

    # Processar os dados, por exemplo, transformá-los em uma lista de dicionários
    result = []
    for document in data:
        result.append(document)

    return result

if __name__ == "__main__":
    # Exemplo de como usar a função get_mongodb_data()
    mongodb_data = get_mongodb_data()
    print(mongodb_data)