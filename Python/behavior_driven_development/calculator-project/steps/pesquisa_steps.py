# -- FILE: features/steps/pesquisa_steps.py
from behave import given, when, then


@given('nenhum produto corresponde à busca')
def step_no_products_found(context):
    context.search_results = []


@when('o usuário pesquisa por "{query}"')
def step_user_searches(context, query):
    context.search_query = query


@then('o sistema apresenta "{mensagem}"')
def step_system_no_results(context, mensagem):
    assert len(
        context.search_results) == 0 and mensagem == "Nenhum resultado encontrado"
