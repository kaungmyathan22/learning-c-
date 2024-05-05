class Authentication {
    static void Main(string[] args) {
        string corUsername = "user";
        string corPassword = "123";
        Console.WriteLine("Welcome to Login");
        Console.Write("Enter username : ");
        string username = Console.ReadLine();
        Console.Write("Enter password : ");
        string password = Console.ReadLine();
        if(username == corUsername && password == corPassword) {
            Console.WriteLine("Login successful");
        } else {
            Console.WriteLine("Incorrect Data");
        }
    }
}