# -- FILE: features/steps/transferencia_steps.py
from behave import given, when, then


@given('a conta origem tem R$ {saldo_origem}')
def step_account_origin_balance(context, saldo_origem):
    context.saldo_origem = float(saldo_origem)


@given('a conta destino tem R$ {saldo_destino}')
def step_account_dest_balance(context, saldo_destino):
    context.saldo_destino = float(saldo_destino)


@when('uma transferência de R$ {valor_transferencia} é realizada')
def step_transfer(context, valor_transferencia):
    valor_transferencia = float(valor_transferencia)
    context.saldo_origem -= valor_transferencia
    context.saldo_destino += valor_transferencia


@then('o saldo da conta origem deve ser R$ {saldo_final_origem}')
def step_origin_final_balance(context, saldo_final_origem):
    assert context.saldo_origem == float(saldo_final_origem)


@then('o saldo da conta destino deve ser R$ {saldo_final_destino}')
def step_dest_final_balance(context, saldo_final_destino):
    assert context.saldo_destino == float(saldo_final_destino)
