Dept.seed do |s|
  s.id = 3
  s.name = "第三開発部"
end

Group.seed do |s|
  s.id = 3
  s.dept_id = 3
  s.name = "オープン系共通基盤グループ"
end

User.seed do |s|
  s.id = 2
  s.group_id = 3
  s.email = "taro@example.com"
  s.email_for_index = "taro@example.com"
  s.family_name = "田中"
  s.given_name = "太郎"
  s.family_name_kana = "タナカ"
  s.given_name_kana = "タロウ"
  s.password = "pw"
end
