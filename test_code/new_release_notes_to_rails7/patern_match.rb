class User
  include ActiveModel::AttributeMethods
  attr_accessor :type, :preferred_full_name, :first_name, :last_name
  # def get_employee_name(user)
  #   if user[:type] == "Employer"
  #     return "Name not required"
  #   elsif user[:type] == "Employee"
  #     if user[:preferred_full_name]
  #       return user[:preferred_full_name]
  #     elsif user[:first_name] && user[:last_name]
  #       return "#{user[:first_name]} #{user[:last_name]}"
  #     end
  #   end
  #   return "Name not found"
  # end
  # ↓↓↓↓↓↓↓↓↓↓下記に書き方に改変可能↓↓↓↓↓↓↓↓↓↓↓↓
  def get_employee_name(user)
    case user
    in { type: "Employer" }
      return "Name not required"
    in { type: "Employee", preferred_full_name: }
      return preferred_full_name
    in { first_name:, last_name: }
      return "#{first_name} #{last_name}"
    else
      return "Name not found"
    end
  end
end

# def get_employee_name(user)の内容
# typeが”Employer”の場合は”Name not required”を返す
# typeが”Employee”、かつpreferred_full_nameが指定されている場合は、preferred_full_nameを返す
# typeが”Employee”、かつfirst_nameとlast_nameが指定されている場合は、first_nameとlast_nameを元にフルネームを返す
# 上記のいずれにもマッチしない場合は”Name not found”を返す