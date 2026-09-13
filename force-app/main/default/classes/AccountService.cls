public class AccountService {

    public static void setDescription(List<Account> accounts) {
        for (Account acc : accounts) {
            if (String.isBlank(acc.Description)) {
                acc.Description = 'Created by CI/CD test feature';
            }
        }
    }
}