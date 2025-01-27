# -- FILE: features/steps/redefinir_senha_steps.py
from behave import given, when, then


@given('o carrinho contém itens')
def step_cart_contains_items(context):
    context.cart_total = 200.00


@when('o usuário insere o cupom "{cupom}"')
def step_apply_coupon(context, cupom):
    if cupom == "DESCONTO10":
        context.discount_applied = True
        context.cart_total *= 0.9


@then('o total deve ser reduzido em 10%')
def step_total_reduced(context):
    assert context.discount_applied and context.cart_total == 180.00
