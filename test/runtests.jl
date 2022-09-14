using Ledger2
using Test

@testset "Ledger2.jl" begin

    l = Ledger(...)

    entries = [
        # credit, debit, amt, time
        Entry(:Cash,:Equity,100.,0), # equity raise 
        Entry(:Cash,:Debt,50.,0),    # debt raise
        Entry(:Equity,:Cash,10.,1),   # pay employees
    ]

    foreach(e -> post!(l,e),entries)

    @test assets(l) == 140.
    @test assets(l,0) == 150.


end
