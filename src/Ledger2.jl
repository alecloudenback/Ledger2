module Ledger2

struct Ledger
    asset
    liability
    expense
    revenue
    equity
end

function Ledger(;
    asset=[:asset],
    liability=[:liability],
    expense=[:expense],
    revenue=[:revenue],
    equity=[:equity],
    )



    return Ledger(
        map(a -> )

end

abstract type Account end
abstract type CreditNormal <: Account end
abstract type DebitNormal  <: Account end


struct AssetAccount <: DebitNormal 
    entries
end
struct LiabilityAccount <: CreditNormal 
    entries
end
struct ExpenseAccount <: DebitNormal 
    entries
end
struct RevenueAccount <: CreditNormal 
    entries
end
struct EquityAccount <: CreditNormal 
    entries
end

struct Entry{T,U}
    credit::Symbol # credit account name
    debit::Symbol  # debit account name
    amount::T
    time::U
end




assets(l::Ledger) = sum(l.assets)
assets(l::Ledger,time) = sum(a in l.assets if a.time < time)


end