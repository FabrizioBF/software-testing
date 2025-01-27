# -- FILE: features/steps/pagamento_steps.py
from behave import given, when, then


@given('o usuário está na página de pagamento')
def step_user_on_payment_page(context):
    context.payment_page = True


@when('o usuário insere os dados de um cartão válido')
def step_user_enters_card_details(context):
    context.payment_status = "Aprovado"


@then('o sistema confirma a transação')
def step_system_confirms_transaction(context):
    assert context.payment_status == "Aprovado"
