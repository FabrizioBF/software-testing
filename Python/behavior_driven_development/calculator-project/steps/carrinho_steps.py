# -- FILE: features/steps/carrinho_steps.py
from behave import given, when, then


@given('o carrinho está vazio')
def step_empty_cart(context):
    context.cart = []


@when('o usuário tenta finalizar a compra')
def step_user_tries_checkout(context):
    context.cart_empty = len(context.cart) == 0


@then('o sistema deve exibir "{mensagem}"')
def step_system_shows_cart_empty(context, mensagem):
    assert context.cart_empty and mensagem == "Adicione produtos ao carrinho"
