struct myStruct{
	int x;
	int y;
	bool z;
};

void returnFromVoid(){
	return 5;
}

void voidFunc(){

}

int intFunc(int a) {
	return a;
}

bool boolFunc(bool a) {
	return a;
}

int returnBoolFromIntFunction(){
	return true;
}

bool returnIntFromBoolFunction(){
	return 10;
}

//int missingReturnValue(){
//	int rtnVal;
//	rtnVal = 15;
//	return; NullPointer
//}

void equalityOpsForMisMatchedTypes(int a, bool b) {
	if(a == b) {
		a++;
	}

	if(a != b) {

	}

}

void compareFunctionsForEqualityAndInequality() {
	if(boolFunc == intFunc) {
		int a;
		a = 5;
	}
}

void numericalOperationsWithNonNumericTypes(bool term1, bool term2){
	bool product;
	bool quotient;
	bool minus;
	bool sum;
	product = term1 * term2;
	quotient = term1 * term2;
	minus = term1 - term2;
	sum = term1 + term2;
}

void logicalOperationsWithNonBoolTypes(int term1, int term2){
	int and;
	int or;
	and = term1 && term2;
	or = term1 || term2;
}

void relationalOperationsWithNonNumericTypes(bool term1, bool term2){
	bool greaterThan;
	bool greaterThanEquals;
	bool lesserThan;
	bool lesserThanEquals;
	greaterThan = term1 > term2;
	greaterThanEquals = term1 >= term2;
	lesserThan = term1 < term2;
	lesserThanEquals = term1 <= term2;
}

void coutErrors(){
	struct myStruct mS;
	cout << intFunc; 	//this should throw an error "Attempt to write a function"
	cout << voidFunc(); 	//Not throwing error about returning a void value
	cout << myStruct; 	//this should throw an error "Attempt to write a struct name"
	cout << mS;		//this should throw an error "Attempt to write a struct variable"
}

void cinErrors(){
	struct myStruct mS;

	cin >> boolFunc;	//this should throw an error "Attempt to read a function"
	cin >> myStruct; 	//this should throw an error "Attempt to read a struct name"
	cin >> mS;		//this should throw an error "Attempt to read a struct variable"
}

void callFunctionErrors(){

}

void unaryOpsOnBadTypes(int a, bool b) {
	a = !a; //Should throw an error "Logical operator applied to non-bool operand"
	b = -b; //Should throw an error "Arithmetic operator applied to non-numeric operand"
}

void testConditionals() {
	int a;
	int b;
	a = 5;
	b = 6;
	if(5 * 6) { //should throw an error "Non-bool expression used as an if condition"
		a--;
	}

	if(5 * 6) { //should throw an error "Non-bool expression used as an if condition"
		a = b;
	} else { 
		b = a;
	}

	while(a * 5) { //should throw an error "Non-bool expression used as a while condition"
		a++;
	}
	if(-a) {

	}
}

void assignWrongType(int a, bool b) {
	int c;
	bool d;
	c = 0;
	d = false;
	c = b;
	a = d;
}

void assignFunctionType() {
	int c;
	returnBoolFromIntFunction = intFunc; //Should throw an error "Function Assignment"
	c = intFunc; //Should throw an error "type mismatch"
}

void assignStructTypes() {

}

int main(){
	int a;
	bool b;
	a = 5;
	b = false;
	a = b;
}
