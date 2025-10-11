class BankAccount {
  //property field,
  String accountHolder;
  double _balance; //private variable
  BankAccount(this.accountHolder, this._balance);
  //methods
  deposit(double amount) {
    if (amount > 0) {
      //if amount is more than 0, amounts adds to _balance.
      _balance += amount;
      print("Deposited $amount");
    } else {
      print("Please deposit more than 0");
    }
  }

  withdraw(double amount) {
    if (amount > _balance) {
      print("Not enough to withdraw $amount");
    } else {
      _balance -= amount;
      print("Withdraw successful");
    }
  }

  double get currentBalance => _balance; //getter
}

void main() {
  BankAccount user1 = BankAccount("John Smith", 1000);
  user1.deposit(50);
  user1.withdraw(1100);
  print("${user1.accountHolder}, Your current balance is: ${user1.currentBalance}"); //using the getter to get protected info. 
}
