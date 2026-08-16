theory Xor_Basics
  imports Main
begin

definition my_xor :: "bool \<Rightarrow> bool \<Rightarrow> bool" where
  "my_xor a b \<equiv> (a \<and> \<not> b) \<or> (\<not> a \<and> b)"

value "my_xor True False"
value "my_xor True True"

lemma xor_comm: "my_xor x y = my_xor y x"
  by (auto simp: my_xor_def)

theorem xor_cancel: "my_xor (my_xor m k) k = m"
  by (auto simp: my_xor_def)

end