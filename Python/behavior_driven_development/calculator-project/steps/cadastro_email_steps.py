# -- FILE: features/steps/cadastro_email_steps.py
from behave import given, when, then


@given('o e-mail "{email}" já está registrado')
def step_email_registered(context, email):
    context.registered_emails = [email]


@when('o usuário tenta se cadastrar com "{email}"')
def step_user_tries_register(context, email):
    context.registration_error = email in context.registered_emails


@then('o sistema mostra "{mensagem}"')
def step_system_shows_error(context, mensagem):
    assert context.registration_error and mensagem == "E-mail já registrado"
