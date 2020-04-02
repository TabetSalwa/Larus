#include <string>
#include <ctype.h>
#include <iostream>
#include <string.h>

#include "CLTheory/Theory.h"
#include "CLTheory/Formula.h"
#include "common.h"


extern ReturnValue ProveTheorem(Theory& T, ProvingEngine* engine, const CLFormula& theorem, const string& theoremName, proverParams& params);
extern ReturnValue ReadAndProveTPTPConjecture(const string inputFile, proverParams& params);
extern bool ProveFromTPTPTheory(const vector<string>& theory, const vector<string>& namesOfAxiomsToBeUsed, const string theoremName, PROVING_ENGINE proving_engine, size_t timelimit, unsigned max_nesting_depth);
// extern bool ProveFromTPTPAAxioms(const vector<string>& axioms, const string strTheorem, INPUT_FORMAT input_format, PROVING_ENGINE proving_engine, size_t timelimit);
extern string replaceFirstOccurrence(std::string& s,const std::string& toReplace,const std::string& replaceWith);

extern bool OutputToTPTPfile(const vector<string>& theory, const vector<string>& namesOfAxiomsToBeUsed, const string theoremName);
extern void ExportCaseStudyToTPTP(vector< pair<string, vector<string> > > case_study, vector<string>& theory);
//extern void RunCaseStudy(vector< pair<string, vector<string> > > case_study, vector<string>& theory);

using namespace std;

extern vector < pair < string, vector<string> > > euclids_thms;
extern vector < pair < string, vector<string> > > euclids_thms_working;
extern vector < pair < string, vector<string> > > euclids_thms1;
extern vector < pair < string, vector<string> > > col_thms;
extern vector<string> EuclidAxioms;
extern vector<string> ColAxioms;
extern vector < pair < string, vector<string> > > test_thms;
extern vector<string> TestAxioms;
extern vector < pair < string, vector<string> > > test_negintro;
extern vector<string> TestAxiomsnegintro;
extern vector < pair < string, vector<string> > > test_trivial;
extern vector<string> TrivialAxioms;

// A=B replaced by eq(A,B)
// A!=B replaced by neq(A,B)

int main(int argc , char** argv)
{
    proverParams params;
    params.input_format = DEFAULT_INPUT_FORMAT;
    params.eEngine = DEFAULT_ENGINE;
    params.time_limit = DEFAULT_TIME_LIMIT;
    params.max_nesting_depth = DEFAULT_MAX_NESTING_DEPTH;
    params.max_proof_length = DEFAULT_MAX_PROOF_LENGTH;
    params.mbNativeEQ = DEFAULT_NATIVE_EQ;
    params.mbNegElim =  DEFAULT_NEG_ELIM;
    params.mbExcludedMiddle =  DEFAULT_EXCLUDED_MIDDLE;
    params.mbCoq =  DEFAULT_COQ;

//    vector< pair<string, vector<string> > > case_study =   euclids_thms1;
//    ExportCaseStudyToTPTP(case_study,EuclidAxioms);

    bool wrongInput = false;

    string inputFilename;
    if (argc >= 2) {
        for (int i = 1; i < argc; i++) {
            if (argv[i][0] == '-' && argv[i][1] == 'f') {
                if (!strcmp(argv[i]+2, "tptp"))
                    params.input_format = eTPTP;
                else {
                    wrongInput = true;
                    break;
                }
            }
            if (argv[i][0] == '-' && argv[i][1] == 'v') {
                if (!strcmp(argv[i]+2, "coq"))
                    params.mbCoq = true;
                else {
                    wrongInput = true;
                    break;
                }
            }
            else if (argv[i][0] == '-' && argv[i][1] == 'l') {
                params.time_limit = atoi(argv[i]+2);
                if (params.time_limit <= 0)
                    params.time_limit = DEFAULT_TIME_LIMIT;
            }
            else if (argv[i][0] == '-' && argv[i][1] == 'n') {
                int d = atoi(argv[i]+2);
                if (d >= 0)
                    params.max_nesting_depth = d;
                else
                    params.max_nesting_depth = DEFAULT_MAX_NESTING_DEPTH;
            }
            else if (argv[i][0] == '-' && argv[i][1] == 'p') {
                int d = atoi(argv[i]+2);
                if (d >= 0)
                    params.max_proof_length = d;
                else
                    params.max_proof_length = DEFAULT_MAX_PROOF_LENGTH;
            }
            else if (argv[i][0] == '-' && argv[i][1] == 'a') {
                if (!strcmp(argv[i]+2, "eq"))
                    params.mbNativeEQ = true;
                else if (!strcmp(argv[i]+2, "negelim"))
                    params.mbNegElim = true;
                else if (!strcmp(argv[i]+2, "excludedmiddle"))
                    params.mbExcludedMiddle =  true;
                else {
                    wrongInput = true;
                    break;
                }
            }
            else if (argv[i][0] == '-' && argv[i][1] == 'e') {
                if (!strcmp(argv[i]+2, "stl"))
                    params.eEngine = eSTL_ProvingEngine;
                else if (!strcmp(argv[i]+2, "sql"))
                    params.eEngine = eSQL_ProvingEngine;
                else if (!strcmp(argv[i]+2, "ursa"))
                    params.eEngine = eURSA_ProvingEngine;
                else if (!strcmp(argv[i]+2, "smt"))
                    params.eEngine = eEQ_ProvingEngine;
                else {
                    wrongInput = true;
                    break;
                }
            }
            else if (argv[i][0] != '-') {
                inputFilename.assign(argv[i], strlen(argv[i]));
            }
        }
    }
    else
        wrongInput = true;

    if (inputFilename == "")
        wrongInput = true;

    if (wrongInput) {
        cout << "Usage: CLprover -l<time limit> -p<length limit> -f<tptp> -e<stl|sql|ursa|smt> -n<max nesting> -a<eq|negelim|excludedmiddle> -vcoq filename \n" << endl;
        return 0;
    }

    clock_t startTime = clock();
    ReturnValue rv = ReadAndProveTPTPConjecture(inputFilename, params);
    clock_t current = clock();

    float elapsed_secs = ((float)(current - startTime)) / CLOCKS_PER_SEC;
    if (rv == eConjectureNotProved && elapsed_secs >= params.time_limit)
        rv = eTimeLimitExceeded;
    cout << "Elapsed time: " << elapsed_secs << endl;

    switch (rv) {
        case eBadOrMissingInputFile:
            cout << "Bad or missing input file." << endl;
            return -1;

        case eWrongFormatParameter:
            cout << "Unknown input format selected." << endl;
            return -1;

        case eErrorReadingAxioms:
            cout << "Error reading axioms." << endl;
            return -1;

        case eNoConjectureGiven:
            cout << "No conjecture given! " << endl;
            return -1;

        case eTimeLimitExceeded:
            cout << "[TIME LIMIT EXCEEDED!]" << endl;
            return -1;

        case eConjectureProved:
            cout << "% SZS status Theorem" << endl;
            return 0;

        case eConjectureNotProved:
            cout << "% SZS status GaveUp" << endl;
            return -1;

        default:
            cout << "% SZS status GaveUp" << endl;
            return -1;
    }

/*
  vector< pair<string, vector<string> > > case_study =   euclids_thms1 ;
    int numberProved = 0, numberNotProved = 0;
    for (size_t i = 0, size = case_study.size(); i<size; i++) {
        string thm = case_study[i].first;
        cout << endl << " Proving " << thm << " ... " << case_study[i].first << endl;
        vector<string> depends = case_study[i].second;
        if (ProveFromTPTPTheory(    EuclidAxioms , depends, thm, eEQ_ProvingEngine, 30)) {
            numberProved++;
            cerr << "1 proved: " << thm  << " total: " << numberProved << " out of : " << (numberProved+numberNotProved) << " (total: " << size << ")" << endl;
        }
        else {
            numberNotProved++;
            cerr << "0 NOTproved: " << thm  << " total: " << numberProved << " out of : " << (numberProved+numberNotProved) << " (total: " << size << ")" << endl;
         }
         cout << "proved: " << numberProved << " out of : " << (numberProved+numberNotProved) << " (total: " << size << ")" << endl;
    }
*/

//    vector< pair<string, vector<string> > > case_study =   euclids_thms1;
//    ExportCaseStudyToTPTP(case_study,EuclidAxioms);


//    RunCaseStudy(case_study,EuclidAxioms);
//    ExportCaseStudyToTPTP(case_study,EuclidAxioms);

    return 0;
}


