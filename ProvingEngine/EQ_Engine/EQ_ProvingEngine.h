#ifndef EQPROVINGENGINE_H
#define EQPROVINGENGINE_H

#include <string>
#include "CLTheory/Theory.h"
#include "CLProof/CLProof.h"
#include "ProvingEngine/ProvingEngine.h"

using namespace std;

#define MAX_PREMISES 50
#define MAX_ARITY 50
#define MAX_AXIOMS 1000
#define MAX_PROOF_LENGTH 100


class EQ_ProvingEngine : public ProvingEngine
{
public:
    EQ_ProvingEngine(Theory *pT, proverParams& params);

    void AddPremise(const Fact& f);
    bool ProveFromPremises(const DNFFormula& formula, CLProof& proof);
    virtual void SetStartTimeAndLimit(const clock_t& startTime, unsigned timeLimit);
    virtual PROVING_ENGINE GetKind() { return eEQ_ProvingEngine; }

private:
    void EncodeAxiom(CLFormula& axiom);
    void EncodeProof(const DNFFormula& formula, unsigned nProofLen);
    bool ReadModel(const string& sModelFile, const string& sEncodedProofFile);
    bool DecodeProof(const DNFFormula& formula,  const string& sEncodedProofFile, CLProof& proof);
    bool DecodeSubproof(const DNFFormula& formula, const vector<string>& sPredicates, map<int,string>& sConstants,
                        ifstream& ursaproof, vector<Fact>& proofTrace, CLProof& proof, bool bNegIntro);

    string app(string s, unsigned arg1);
    string app(string s, unsigned arg1, unsigned arg2);
    string appeq(string arg1, string arg2);

    unsigned mnMaxArity;
    unsigned mnMaxPremises;
    unsigned mnAxiomsCount;
    unsigned mnPremisesCount;

    // Axioms (same arrays used as in URSA specification)
    unsigned nAxiomUniVars[MAX_AXIOMS];   /* number of univ quantifiers */
    unsigned nAxiomExiVars[MAX_AXIOMS];   /* number of exi quantifiers */
    unsigned nAxiomPremises[MAX_AXIOMS];  /* number of premises         */
    unsigned bAxiomBranching[MAX_AXIOMS]; /* axiom is branching or not */
    unsigned nPredicate[MAX_AXIOMS][MAX_PREMISES];
    unsigned nBinding[MAX_AXIOMS][MAX_PREMISES*MAX_ARITY];

    map<string, unsigned> PREDICATE;
    map<unsigned, unsigned> ARITY;
    map<string, unsigned> CONSTANTS;

    set<string> DECLARATIONS;

    string mURSAstringPremises;
    string mURSAstringAxioms;
};

#endif // EQPROVINGENGINE_H

