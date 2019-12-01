module SchoolsHelper

  def readable_school_statuses
    arr = []
    School.statuses.keys.each do |k|
      case k
      when 'draft'
        arr << ['Nháp', k]
      when 'active'
        arr << ['Tạo xong' , k]
      when 'fund_raising'
        arr << ['Đang Gây Quỹ', k]
      when 'built'
        arr << ['Đã Khánh Thành', k]
      end
    end
    arr
  end

  def school_table_class(school)
    return 'table-secondary' if school.draft?
    return 'table-active' if school.active?
    return 'table-danger' if school.fund_raising?
    return 'table-success' if school.built?
  end

end
