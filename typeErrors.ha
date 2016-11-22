struct myStruct{
	int x;
	int y;
	bool z;
};

struct anotherStruct{
	int x;
	int y;
	bool z;
};

void returnFromVoid(){
	return 5;	//return with a value in a void function
}

void returnFromVoidAgainWith2Errors() {
	return 3 + true;
}

void voidFunc(){
}

int intFunc(int a) {
	return a;
}

int intFuncWithMultipleParams(int a, int b) {
	return a + b;
}

bool boolFunc(bool a) {
	return a;
}

int returnBoolFromIntFunction(){
	return true;	// bad return value
}

bool returnIntFromBoolFunction(){
	return 10;	//bad return value
}

int missingReturnValue(){
	int rtnVal;
	rtnVal = 15;
	return;		//missing return value
}

void equalityOpsForMisMatchedTypes(int a, bool b) {
	if(a == b) {	//Type mismatch
		a++;
	}

	if(a != b) {	//type mismatch

	}

}

void comparisonOpsForVoidFunctions() {
	if(voidFunc() == voidFunc()) { //Equality operator applied to void functions

	}

	if(voidFunc() != voidFunc()) { //Equality operator applied to void functions
	
	}
}

void comparisonOpsForStructVariables() {
	struct myStruct ms1;
	struct myStruct ms2;
	if(ms1 == ms2) { //Equality operator applied to struct variables

	}

	if(ms1 != ms2) { //Equality operator applied to struct variables
	
	}
}

void comparisonOpsForStructNames() {
	if(myStruct == anotherStruct) { //Equality operator applied to struct names

	}

	if(myStruct != anotherStruct) { //Equality operator applied to struct names
	
	}
}

void compareFunctionsForEqualityAndInequality() {
	if(boolFunc == intFunc) {	//Equality operator applied to functions
		int a;
		a = 5;
	}
}

void numericalOperationsWithNonNumericTypes(bool term1, bool term2){
	struct myStruct ms;
	bool product;
	bool quotient;
	bool minus;
	bool sum;
	sum = ms + term1;		//Arithmetic operator applied to non-numeric operand
	product = term1 * term2;	//Arithmetic operator applied to non-numeric operand
	quotient = term1 * term2;	//Arithmetic operator applied to non-numeric operand
	minus = term1 - term2;		//Arithmetic operator applied to non-numeric operand
	sum = term1 + term2;		//Arithmetic operator applied to non-numeric operand
}

void logicalOperationsWithNonBoolTypes(int term1, int term2){
	struct myStruct ms;
	int and;
	int or;
	ms = term1 && ms;	// Logical operator applied to non-bool operand
	and = term1 && term2;	// Logical operator applied to non-bool operand
	or = term1 || term2;	// Logical operator applied to non-bool operand
}

void relationalOperationsWithNonNumericTypes(bool term1, bool term2){
	struct myStruct ms; 	
	bool greaterThan;
	bool greaterThanEquals;
	bool lesserThan;
	bool lesserThanEquals;
	ms = term1 > ms;		//Relational operator applied to non-numeric operand
	greaterThan = term1 > term2;	//This should throw an error "Relational operator applied to non-numeric operand"
	greaterThanEquals = term1 >= term2; //This should throw an error "Relational operator applied to non-numeric operand"
	lesserThan = term1 < term2;	//This should throw an error "Relational operator applied to non-numeric operand"
	lesserThanEquals = term1 <= term2; //This should throw an error "Relational operator applied to non-numeric operand"
}

void coutErrors(){
	struct myStruct mS;
	cout << intFunc; 	//this should throw an error "Attempt to write a function"
	cout << voidFunc(); 	//Attempt to write void
	cout << myStruct; 	//this should throw an error "Attempt to write a struct name"
	cout << mS;		//this should throw an error "Attempt to write a struct variable"
	cout << myStruct + 1;	//Arithmetic op error
}

void cinErrors(){
	struct myStruct mS;

	cin >> boolFunc;	//this should throw an error "Attempt to read a function"
	cin >> myStruct; 	//this should throw an error "Attempt to read a struct name"
	cin >> mS;		//this should throw an error "Attempt to read a struct variable"
}

void callFunctionErrors(){
	int a;
	bool b;
	int myExp;
	a();			//this should throw an error "Attempt to call a non-function"
	b(); 			//this should throw an error "Attempt to call a non-function"
	intFunc(5, 6, 7); 	//this should throw an error "Function call with wrong number of args"
	intFunc(); 		//this should throw an error "Function call with wrong number of args"
	intFunc(true);		//this should throw an error "Type of actual does not match type of formal"
	boolFunc(true, true, false); 	//this should throw an error "Function call with wrong number of args"
	boolFunc(); 		//this should throw an error "Function call with wrong number of args"
	boolFunc(1);		//this should throw an error "Type of actual does not match type of formal"
	boolFunc(1, true, false); 
	myExp = 1 + intFunc(true); //Type of actual does not match type of formal
	myExp = 1 + intFuncWithMultipleParams(1, true);
	myExp = 1 + intFunc(1 + true);

}

void unaryOpsOnBadTypes(int a, bool b) {
	bool bb;
	bb = true;
	a = !a; //Should throw an error "Logical operator applied to non-bool operand"
	bb = -b; //Should throw an error "Arithmetic operator applied to non-numeric operand"
	bb++; //Should throw an error "Arithmetic operator applied to non-numeric operand"
	bb--; //Should throw an error "Arithmetic operator applied to non-numeric operand"
}

void testConditionals() {
	struct myStruct mS;
	int a;
	int b;
	a = 5;
	b = 6;

	if(5 * 6) { 	//should throw an error "Non-bool expression used as an if condition"
		a--;
	}
	if(-a) {	//should throw an error "Non-bool expression used as an if condition"

	}
	if("hello") { 	//should throw an error "Non-bool expression used as an if condition"

	}
	if(mS) { 	//Should throw an error "Non-bool expression used as an if condition"

	}
	if(myStruct) { 	//Should throw an error "Non-bool expression used as an if condition"

	}
	if(voidFunc()) { //should throw an error "Non-bool expression used as an if condition"

	}
	if(intFunc(1)) { //should throw an error "Non-bool expression used as an if condition"

	}

	if(5 * 6) { //should throw an error "Non-bool expression used as an if condition"
		a = b;
	} else { 
		b = a;
	}
	if(-a) {

	}else {}
	if("hello") { //should throw an error "Non-bool expression used as an if condition"

	} else {}
	if(mS) { //Should throw and error "Non-bool expression used as an if condition"
 
	} else {}
	if(myStruct) { //Should throw and error "Non-bool expression used as an if condition"
 
	} else {}
	if(voidFunc()) { //should throw an error "Non-bool expression used as an if condition"

	} else {}
	if(intFunc(1)) { //should throw an error "Non-bool expression used as an if condition"

	} else {}
	
	while(a * 5) { 	//should throw an error "Non-bool expression used as a while condition"
		a++;
	}
	while(-a) {	//should throw an error "Non-bool expression used as a while condition"

	}
	while("hello") { //should throw an error "Non-bool expression used as a while condition"

	}
	while(mS) { //Should throw and error "Non-bool expression used as a while condition"

	}
	while(myStruct) { //"Non-bool expression used as a while condition

	}
	while(voidFunc()) { //should throw an error "Non-bool expression used as a while condition"

	}
	while(intFunc(1)) { //should throw an error "Non-bool expression used as a while condition"

	}
}

void assignWrongType(int a, bool b) {
	int c;
	bool d;
	struct myStruct ms;
	struct anotherStruct as;
	c = 0;
	d = false;
	c = b;					//Should throw an error "type mismatch"
	a = d;					//Should throw an error "type mismatch"
	ms = a;					//Should throw an error "type mismatch"
	as = d;					//Should throw an error "type mismatch"
	ms = voidFunc();			//Should throw an error "type mismatch"
	as = intFunc(1);			//Should throw an error "type mismatch"
	ms = boolFunc(true);			//Should throw an error "type mismatch"
}

void assignFunctionTypes() {
	int c;
	returnBoolFromIntFunction = intFunc; 	//Should throw an error "Function Assignment"
	c = intFunc; 				//Should throw an error "type mismatch"
}

void assignStructVarType() {
	struct myStruct ms;
	struct anotherStruct as;
	ms = as; 				//Struct variable Assignment
}

void assignStructNameTypes() {
	anotherStruct = myStruct; 		//Struct name assignment
}

void binaryOpsOnChainExps(int first, bool second) {
	int a;
	int b;
	bool c;
	bool d;
	a = 10;
	b = 20;
	c = false;
	d = true;
	a = (true || second) + (second && true); //should result in two arithmetic operand errors
	c = (10 * 20) && (5 + a) || (!first);	//logical operator applied to non-bool
	a = (true + 3) * 4;		//arithmetic op applied to non-numeric
	c = d && (false || 3);		//logical operator applied to non-bool
	a = 1 + intFunc(true);		//type of actual does not match type of formal
}

int main(){
	int a;
	bool b;
	a = 5;
	b = false;
	a = b; 				//type mismatch
}
