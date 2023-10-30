-- stb

project "stb"
  kind "None"
  language "C"
  cdialect "C11"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  IncludeDir["stb"] = "%{wks.location}/libs/stb"

  includedirs {}

  files {
    "premake5.lua",
    "**.h",
    "**.c",
  }