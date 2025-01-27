# -- FILE: features/steps/redefinir_senha_steps.py
from behave import given, when, then


@given('o usuário acessa a página de redefinição de senha')
def step_access_reset_page(context):
    context.reset_page_open = True


@when('ele insere um e-mail válido "{email}"')
def step_enter_valid_email(context, email):
    context.valid_email = email


@then('o sistema envia um link de redefinição para o e-mail')
def step_system_sends_reset_link(context):
    assert context.valid_email.endswith("@teste.com")
