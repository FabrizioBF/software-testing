# -- FILE: features/steps/busca_produto_steps.py
from behave import given, when, then


@given('o usuário está na página de busca')
def step_user_on_search_page(context):
    context.products = ["laptop", "smartphone", "tablet"]


@when('o usuário procura por "{item}"')
def step_user_searches_item(context, item):
    context.search_result = item in context.products


@then('a lista de produtos deve conter "{item}"')
def step_result_contains_item(context, item):
    assert context.search_result is True
