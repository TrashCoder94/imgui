project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++14"
	staticruntime "on"
	
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
		"imgui_demo.cpp",
		"backends/imgui_impl_glfw.cpp",
		"backends/imgui_impl_glfw.h",
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_opengl3.h"
	}

	includedirs
	{
		"%{IncludeDir.glfw}",
		"%{IncludeDir.imgui}"
	}

	filter "system:linux"
		pic "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"