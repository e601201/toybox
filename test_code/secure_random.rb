require 'securerandom'
# バージョン 4 の UUID (Universally Unique IDentifier) を生成して返します。
p SecureRandom.uuid
user_id = SecureRandom.uuid

p user_id