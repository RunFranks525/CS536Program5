int f(int a, int b) {
	int c;
	bool quit;
	int sum;
	c = a + b;
	quit = false;
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

int returnIntFunc(int a) {
	return a;
}

bool returnBoolFunc(bool a) {
	return a;
}

void returnNothing(){

}

struct myStruct{
	int x;
	int y;
};

void cinFn(int a, bool b){
	//myStruct mS;
	
	//cin >> mS.x;
	cin >> a;
	cin >> b;

	return;
}

void coutFn(int a, bool b){	
	cout << a;
	cout << b;
	cout << "coconuts";
}

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

bool binaryLogicalExpressions(bool term1, bool term2) {
	bool and;
	bool or;
	and = term1 && term2;
	or = term1 || term2;
	return and;
}

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

int main(){
    int a;
    bool b;
    a = 1;
    b = true;
    a = 1 + 5;
    f(a, 5);
    return a;
}

