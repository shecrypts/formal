theory Modular_Shifts
  imports Main
begin

section \<open>Modular Arithmetic and Shift Ciphers\<close>

text \<open>
  \subsection{Introduction to Shift Encryption}
  This theory formalizes a classical modular shift cipher operating over natural numbers.
  We define the encryption transformation function and verify that sequential shifts compose additively.
\<close>

text \<open>
  \paragraph{Encryption Function Definition}
  We define encryption $E(n, k, m) = (m + k) \pmod n$ where $n$ is the alphabet size, 
  $k$ is the shift key, and $m$ is the message token.
\<close>
definition E :: "nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "E n k m \<equiv> (m + k) mod n"

text \<open>
  \paragraph{Concrete Test Evaluation}
  We evaluate the encryption function on sample concrete inputs to verify functional behavior.
\<close>
value "E 26 3 5"

text \<open>
  \paragraph{Composition Verification}
  We prove that double encryption under key $k_1$ followed by key $k_2$ is equivalent to 
  a single encryption under key $k_1 + k_2$.
\<close>
theorem shift_compose: "E n k2 (E n k1 m) mod n = E n (k1 + k2) m mod n"
  by (simp add: E_def mod_simps algebra_simps)

text \<open>
  The formal property verified by the Isabelle kernel is @{thm [display, show_question_marks = false] shift_compose}.
\<close>

end