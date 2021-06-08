import os
import joblib 
import sys
import salary_pb2

def load_model():
    dirname = os.path.dirname(__file__)
    path = os.path.join(dirname, 'knn_simple_classifier.pkl')
    return joblib.load(path)  

def predict_model(args):
    salary_params = salary_pb2.SalaryParams()
    salary_params.ParseFromString(args)
    model_params = [[ salary_params.salary_converted_max, salary_params.salary_converted_min, salary_params.cost_of_living_index ]]

    salary_classifier = load_model()
    return salary_classifier.predict(model_params)[0]
