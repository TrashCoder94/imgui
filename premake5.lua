project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++14"
	
	targetdir ("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/Intermediate/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_tables.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"misc/cpp/imgui_stdlib.h",
		"misc/cpp/imgui_stdlib.cpp",
		"imgui_demo.cpp",
		"imgui-SFML.h",
		"imgui-SFML.cpp"
	}

	includedirs
	{
		"%{IncludeDir.imgui}"
		"%{IncludeDir.imguiStdLib}"
	}

	filter "system:linux"
		pic "on"
	filter ""
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter ""

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
	filter ""
	
	includeAndLinkSFML()
