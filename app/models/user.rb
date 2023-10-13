require 'uri'
class User < ApplicationRecord
  validates_presence_of :name, :email, :cpf, :phone

  #validação de email
  validates_length_of :email, maximum: 254
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, message: "Inválido"

  #validação de CPF
  validates_length_of :cpf, minimum:11, maximum: 14, message: ": Deve conter no mínimo 11 dígitos, e não pode ultrapassar 14 dígitos."
  validates_format_of :cpf,  with: /\A[0-9]{3}.?[0-9]{3}.?[0-9]{3}-?[0-9]{2}\z/, message: ": Deve conter somente números, pontos(.) e ífen(-). Exemplo: 123.456.789-10"

  #validação de telefone, considerando o formato padrão brasileiro.
  validates_length_of :phone, maximum: 17, message: ": Máximo de 17 dígitos. Exemplo: +55 11 9XXXX-YYYY"
  validates_format_of :phone,  with: /\A\+?[0-9]{0,2} ?\(?[0-9]{2}\)? ?[0-9]{4,5}-?[0-9]{4}\z/, message: ": Formato de número inválido. Exemplo: +55 11 9XXXX-YYYY. Caso prefira apenas números: +55119XXXXYYYY"

end
