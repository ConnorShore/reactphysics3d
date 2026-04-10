project "reactphysics3d"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "include/**.h",
        "src/**.h",
        "src/**.cpp"
    }

    includedirs {
        "include"
    }

    -- Optional Defines from their CMake options (Uncomment if you need them later)
    -- defines { "IS_RP3D_PROFILING_ENABLED" }
    -- defines { "IS_RP3D_DOUBLE_PRECISION_ENABLED" }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"