using Ledger2
using Documenter

DocMeta.setdocmeta!(Ledger2, :DocTestSetup, :(using Ledger2); recursive=true)

makedocs(;
    modules=[Ledger2],
    authors="alecloudenback <alecloudenback@users.noreply.github.com> and contributors",
    repo="https://github.com/alecloudenback/Ledger2.jl/blob/{commit}{path}#{line}",
    sitename="Ledger2.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://alecloudenback.github.io/Ledger2.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/alecloudenback/Ledger2.jl",
    devbranch="main",
)
