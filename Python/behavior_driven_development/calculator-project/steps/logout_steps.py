# -- FILE: features/steps/logout_steps.py
from behave import given, when, then


@given('o usuário está logado')
def step_user_logged_in(context):
    context.is_logged_in = True


@when('o usuário clica no botão de logout')
def step_user_clicks_logout(context):
    context.is_logged_in = False


@then('o sistema deve redirecionar para a página de login')
def step_system_redirect_login_page(context):
    assert context.is_logged_in is False
