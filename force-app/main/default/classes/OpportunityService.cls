public class OpportunityService {

    public static void processOpportunity(Opportunity opp) {
        if (opp.Amount != null && opp.Amount > 100000) {
            opp.Description = 'High Value Opportunity';
        } else if (opp.Amount != null && opp.Amount > 50000) {
            opp.Description = 'Medium Value Opportunity';
        } else if (opp.Amount != null && opp.Amount > 10000) {
            opp.Description = 'Standard Opportunity';
        } else {
            opp.Description = 'Low Value Opportunity';
        }
    }

    public static Decimal calculateDiscount(Opportunity opp) {
        if (opp.Amount == null) {
            return 0;
        }

        if (opp.Amount >= 100000) {
            return opp.Amount * 0.20;
        }

        if (opp.Amount >= 50000) {
            return opp.Amount * 0.10;
        }

        if (opp.Amount >= 10000) {
            return opp.Amount * 0.05;
        }

        return 0;
    }
}