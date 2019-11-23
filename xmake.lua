


target("LZ4")
	set_kind("shared")
	set_languages("c11", "cxx14")

    add_files("lib/*.c")

	add_rules("mode.debug", "mode.release")

	if is_mode("debug") then
		set_symbols("debug")
		set_optimize("none")
	else
		set_optimize("fastest")
	end

    if (is_os("windows")) then
		add_cxflags("/TC", {force = true})
		add_defines("LZ4_DLL_EXPORT=1")
	end
	
	
	if (is_os("android")) then
	
	end

	if (is_os("ios")) then
		set_kind("static")
	end