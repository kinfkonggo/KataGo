
// options
#define FORBIDDEN_FEATURE  // forbidden points input features
//#define NOVCF                     //if defined, then not use vcf
#define USE_VCF_FEATURE_IF_USE_VCF
//#define CHANGE_FORBIDDEN_POLICY   //set policy target of forbidden points to nonzero
//#define USE_HISTORY               //history features
//#define FORGOMOCUP                //CPU only and single thread



#define FREESTYLE 0  // freestyle rule, 6 is win
#define STANDARD 1   // standard rule, 6 is not win
#define RENJU 2      // renju mode
#define RULE 2

#if(RULE < 0 || RULE > 2)
rule must be 1, 2, 3
#endif


#define MAX_FLEN 15  // Board::MAX_LEN, Normal gomoku/renju games are on 15x15 board