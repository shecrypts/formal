theory Xor_Basics
  imports Main
begin

section \<open>Boolean Logic and Stream Cipher Primitives\<close>

text \<open>
  \subsection{Exclusive OR Formalization}
  Exclusive OR (XOR) serves as a core mathematical primitive for symmetric stream ciphers and One-Time Pads.
  In this module, we formalize XOR logic and verify its algebraic properties.
\<close>

text \<open>
  \paragraph{Definition of XOR}
  We construct XOR from standard conjunction, disjunction, and negation operators: @{term "my_xor a b"}.
\<close>
definition my_xor :: "bool \<Rightarrow> bool \<Rightarrow> bool" where
  "my_xor a b \<equiv> (a \<and> \<not> b) \<or> (\<not> a \<and> b)"

text \<open>
  \paragraph{Evaluation Checks}
  We test basic truth table outcomes using Isabelle's evaluation engine.
\<close>
value "my_xor True False"
value "my_xor True True"

text \<open>
  \paragraph{Algebraic Properties}
  First, we establish commutativity for @{term my_xor}.
\<close>
lemma xor_comm: "my_xor x y = my_xor y x"
  by (auto simp: my_xor_def)

text \<open>
  Next, we prove the fundamental property for stream cipher decryption:
  re-applying XOR with key $k$ cancels out the initial encryption step. 
\<close>
theorem xor_cancel: "my_xor (my_xor m k) k = m"
  by (auto simp: my_xor_def)

text  \<open>
 The full cancellation theorem is verified in @{thm [display, show_question_marks = false] xor_cancel}.
\<close>
end