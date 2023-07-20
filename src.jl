using Pkg
Pkg.add("PackageCompiler")
using PackageCompiler

Pkg.activate()
spec = PackageSpec(
    url="git@github.com:domluna/JuliaFormatter.jl.git"
)

Pkg.add(spec)

create_sysimage(["JuliaFormatter"], sysimage_path="FormatterSysimage.so")
