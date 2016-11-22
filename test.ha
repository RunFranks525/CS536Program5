struct myStruct{
	int x;
	int y;
	bool z;
};

//basic function returning int ID
int returnIntFunc(int a) {
	return a;
}

//basic function returning bool ID
bool returnBoolFunc(bool a) {
	return a;
}


int f(int a, int b) {
	int c;
	bool quit;
	int sum;
	c = a + b;		//assign int ID addition result to ID of int type
	quit = false; 		//assign bool literal to ID of bool type

	//check basic while loop
	while(!quit) {
		sum = sum + c;
		if(sum > 10) {
			quit = true;
		} else {
			sum = 1;	
		}
	}

	
	return sum;
}

//test that FnCalls returning ints are okay in equality operators, using ==
int testNumCallExpressionEqualityOps() {
	int sum;
	if(returnIntFunc(5) == returnIntFunc(6)){
		sum = sum + 10;
	}
	if(returnIntFunc(5) == 5) {
		sum = 5;
	}
	return sum;
	
}

//test that FnCalls returning ints are okay in relational operators
int testNumCallExpressionRelationalOps() {
	int sum;
	if(returnIntFunc(5) > 5) {
		sum = 5;
	}
	if(returnIntFunc(5) < 5) {
		sum = 5;
	}
	if(returnIntFunc(5) >= 5) {
		sum = 5;
	}
	if(returnIntFunc(5) <= 5) {
		sum = 5;
	}
	return sum;
}

//test that FnCalls returning ints are okay in equality operators, using !=
int testNumCallExpressionInEqualityOps() {
	int sum;
	if(returnIntFunc(5) != returnIntFunc(6)){
		sum = sum + 10;
	}
	if(returnIntFunc(5) != 5) {
		sum = 5;
	}	
	return sum;
}

//test that FnCalls returning bools are okay in equality operators, using ==
bool testBoolCallExpressionEqualityOps() {
	bool a;
	//both functions return a bool
	if(returnBoolFunc(true) == returnBoolFunc(true)){
		a = true;
	}
	//one Exp is a bool literal
	if(returnBoolFunc(false) == true) {
		a = false;
	}
	return a;
	
}

//test that FnCalls returning bools are okay in equality operators, using !=
bool testBoolCallExpressionInEqualityOps() {
	bool a;
	if(returnBoolFunc(true) != returnBoolFunc(true)){
		a = true;
	}
	if(returnBoolFunc(false) != true) {
		a = false;
	}
	return a;
	
}

//check that it is okay to have a function decl with empty body
void returnNothing(){

}

//test the use of struct fields in relational and equality operators
bool testStructVarsOps(){
	struct myStruct mS;
	mS.x = 5;
	mS.y = 4;
	mS.z = false;
	if(mS.z){
		return false;
	}
	if(mS.z == false){
		return true;
	}
	if(mS.x == mS.y){
		return mS.z;
	}
	if(mS.x != mS.y){
		return true;
	}
	if(mS.x < mS.y){
		return mS.z;
	}
	if(8 <= mS.y){
		return false;
	}
	if(mS.y > mS.x){
		return mS.z;
	}
	if(mS.x >= 6){
		return false;
	}
}


//check cin function
void cinFn(int a, bool b){
	struct myStruct mS;
	
	cin >> mS.x; 	//int variable from dot access
	cin >> mS.z; 	//boolean variable from dot access
	cin >> a; 	//regular int variable
	cin >> b; 	//regular bool variable
}

//check cout function
void coutFn(int a, bool b){
	struct myStruct mStruct;

	cout << mStruct.y;		//int variable from dot access
	cout << mStruct.z;		//boolean variable from dot access
	cout << a;			//regular int variable
	cout << b;			//regular bool variable
	cout << returnIntFunc(5);	//int is returned from this function
	cout << returnBoolFunc(true);	//bool is returned from this function
	cout << "coconuts";		//string literal is OK
	cout << false;			//bool literal is OK
	cout << 33;			//int literal is OK
					//no return statement is needed!
}

//check that numeric operations are allowed on regular ints
int binaryNumericExpressions(int term1, int term2) {
	int product;
	int quotient;
	int sum;
	int minus;
	product = term1 * term2;
	quotient = term1 / term2;
	sum = term1 + term2;
	minus = term1 - term2;
	return sum;
}

//check that numeric operations are allowed on struct fields of type int
int structNumericExpressions(int term1, int term2){
	int product;
	int quotient;
	int sum;
	int minus;
	struct myStruct mS;
	mS.x = term1;
	mS.y = term2;
	product = mS.x * mS.y;
	quotient = mS.x / mS.y;
	sum = mS.x + mS.y;
	minus = mS.x - mS.y;
	return sum;

}

//check that logical expressions are allowed on regular bools
bool binaryLogicalExpressions(bool log1, bool log2) {
	bool and;
	bool or;
	log1 = false;
	log2 = true;
	and = log1 && log2;
	or = log1 || log2;
	return and;
}

//check that logical expressions are allowed on struct fields of type bool
bool structLogicalExpressions(bool term1, bool term2) {
	struct myStruct mS1;	
	struct myStruct mS2;
	bool and;
	bool or;
	mS1.z = term1;
	mS2.z = term2;
	and = mS1.z && mS2.z;
	or = mS1.z || mS2.z;
	return and;
}

//check that binary relational expressions work with comparing int IDs
//also check that you can return binary expressions that evaluate to an int type
int binaryRelationalExpressions(int term1, int term2) {
	if(term1 > term2) {
		return term1;
	} 
	if(term1 < term2) {
		return term2;
	}
	if(term1 >= term2) {
		return term1 + term2;
	}
	if(term1 >= term2) {
		return term1 - term2;
	}
	return term1 * term2;
}

int unaryNumericExpression(int term1) {
	//-, ++, --
	int negate;
	int a;
	a = 5;
	negate = -a;
        a++;
	a--;
	return a;
}

bool unaryLogicalExpression(bool term1) {
	//!
	return !term1;
}

bool binaryEqualityNumericExpressions(int term1, int term2) {
	if(term1 == term2) {
		return true;
	} else {
		return false;
	}
}

bool binaryEqualityLogicalExpressions(bool term1, bool term2) {
	if(term1 == term2) {
		return true;
	} else {
		return false;
	}
}

bool binaryNonEqualityNumericExpressions(int term1, int term2) {
	if(term1 != term2) {
		return true;
	} else {
		return false;
	}
}

bool binaryNonEqualityLogicalExpressions(bool term1, bool term2) {
	if(term1 != term2) {
		return true;
	} else {
		return false;
	}
}

void testChainOps(int a, int b, bool c, bool d){
	int numerical;
	bool logical;
	numerical = (a + b) + (b * a) - (-b * 5);
	logical = (c || d) && (!c) || d;
	logical = (a > b) && (b > a);
}

int main(){
    int a;
    bool b;
    a = 1;
    b = true;
    a = 1 + 5;
    f(a, 5);
    return a;
}

