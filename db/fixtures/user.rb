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
  s.id = 1
  s.group_id = 3
  s.email = "tamura2004@gmail.com"
  s.email_for_index = "tamura2004@gmail.com"
  s.family_name = "田村"
  s.given_name = "光浩"
  s.family_name_kana = "タムラ"
  s.given_name_kana = "ミツヒロ"
end
