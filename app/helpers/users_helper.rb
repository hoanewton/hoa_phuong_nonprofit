module UsersHelper
  def role_options
    arr = []
    User::ROLES.each do |role|
      case role
      when 'student'
        arr << ['Học Sinh', role]
      when 'member'
        arr << ['Thành Viên', role]
      when 'admin'
        arr << ['Admin', role]
      end
    end
    arr
  end
end
