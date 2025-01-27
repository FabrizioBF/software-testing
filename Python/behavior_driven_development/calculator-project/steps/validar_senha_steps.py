# -- FILE: features/steps/validar_senha_steps.py
from behave import given, when, then


@given('o usuário tenta acessar a conta')
def step_user_attempts_login(context):
    context.correct_password = "123456"


@when('insere a senha "{senha}"')
def step_user_enters_password(context, senha):
    context.login_result = senha == context.correct_password


@then('o sistema exibe "{mensagem}"')
def step_system_shows_message(context, mensagem):
    if not context.login_result:
        assert mensagem == "Senha incorreta"
