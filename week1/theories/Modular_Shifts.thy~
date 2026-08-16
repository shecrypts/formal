theory Modular_Shifts
  imports Main
begin

definition E :: "nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "E n k m \<equiv> (m + k) mod n"

value "E 26 3 5"

theorem shift_compose: "E n k2 (E n k1 m) mod n = E n (k1 + k2) m mod n"
  by (simp add: E_def mod_simps algebra_simps)

end