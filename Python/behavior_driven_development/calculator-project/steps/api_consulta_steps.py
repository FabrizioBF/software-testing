# -- FILE: features/steps/api_consulta_steps.py
from behave import given, when, then


@given('a API está ativa')
def step_api_active(context):
    context.api_data = {"usuarios": {"1": {"nome": "João"}}}


@when('uma requisição GET é feita para "{endpoint}"')
def step_api_get_request(context, endpoint):
    user_id = endpoint.split("/")[-1]
    context.response = context.api_data["usuarios"].get(user_id)


@then('a resposta deve conter o nome "{nome}"')
def step_response_contains_name(context, nome):
    assert context.response["nome"] == nome
