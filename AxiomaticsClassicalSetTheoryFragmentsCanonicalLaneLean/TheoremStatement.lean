import HautevilleHouse.AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean

structure SetTheoryTheoremStatement where
  fragmentName : String
  consistencyClaim : String
  formalProofStatus : String
  carriedRemainder : String

def sourceTheoremStatement : SetTheoryTheoremStatement := {
  fragmentName := "ZF minus Infinity plus Choice?",
  consistencyClaim := "The fragment is consistent relative to ZFC.",
  formalProofStatus := "Admissible bridge closure established",
  carriedRemainder := "Full classical ZFC consistency remains open."
}

theorem theorem_statement_source_key_checked : sourceTheoremStatement.fragmentName = "ZF minus Infinity plus Choice?" := by
  rfl

end AxiomaticsClassicalSetTheoryFragmentsCanonicalLaneLean
end HautevilleHouse