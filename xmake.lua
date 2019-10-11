


target("LZ4")
	set_kind("static")
	set_languages("c11", "cxx14")
    add_files("lib/*.c")

    if (is_os("windows")) then
		set_kind("shared")
		add_defines("LZ4_DLL_EXPORT=1")
	end
	
	if (is_os("android")) then
		set_kind("shared")
	end
