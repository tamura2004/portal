Dept.seed do |s|
  s.id = 1
  s.name = "第一開発部"
end

Dept.seed do |s|
  s.id = 2
  s.name = "第二開発部"
end

Dept.seed do |s|
  s.id = 3
  s.name = "第三開発部"
end

Group.seed do |s|
  s.id = 1
  s.dept_id = 1
  s.name = "第一開発グループ"
end

Group.seed do |s|
  s.id = 2
  s.dept_id = 2
  s.name = "第二開発グループ"
end

Group.seed do |s|
  s.id = 3
  s.dept_id = 3
  s.name = "第三開発グループ"
end

User.seed do |s|
  s.id = 1
  s.group_id = 1
  s.email = "ichiro@example.com"
  s.email_for_index = "ichiro@example.com"
  s.family_name = "開発"
  s.given_name = "一郎"
  s.family_name_kana = "カイハツ"
  s.given_name_kana = "タロウ"
  s.password = "pw"
end

User.seed do |s|
  s.id = 2
  s.group_id = 2
  s.email = "jiro@example.com"
  s.email_for_index = "jiro@example.com"
  s.family_name = "開発"
  s.given_name = "次郎"
  s.family_name_kana = "カイハツ"
  s.given_name_kana = "ジロウ"
  s.password = "pw"
end

User.seed do |s|
  s.id = 3
  s.group_id = 3
  s.email = "saburo@example.com"
  s.email_for_index = "saburo@example.com"
  s.family_name = "開発"
  s.given_name = "三郎"
  s.family_name_kana = "カイハツ"
  s.given_name_kana = "サブロウ"
  s.password = "pw"
end
