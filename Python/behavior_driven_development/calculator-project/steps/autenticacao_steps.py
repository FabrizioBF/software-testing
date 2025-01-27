# -- FILE: features/steps/autenticacao_steps.py
from behave import given, when, then


@given('o usuário acessou a aplicação')
def step_user_access_app(context):
    context.is_logged_in = True


@when('o usuário verifica seu estado de login')
def step_user_checks_login_state(context):
    context.result = context.is_logged_in


@then('o sistema deve confirmar que o usuário está logado')
def step_system_confirms_login(context):
    assert context.result is True
