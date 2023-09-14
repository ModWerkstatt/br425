function data()
return {
	info = {
		minorVersion = 1,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		},
		tags = { "europe", "deutschland", "germany", "db" },
		minGameVersion = 0,
        params = {
			{
				key = "br424fake",
				name = _("Fake_br424"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_br424_desc"),
				defaultIndex = 0,
			},
            {
				key = "br425fake",
				name = _("Fake_br425"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_br425_desc"),
				defaultIndex = 0,
			},
            {
				key = "br426fake",
				name = _("Fake_br426"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_br426_desc"),
				defaultIndex = 0,
			},
		},
		dependencies = { },
		url = { "" },
	},
	options = {
	},

	runFn = function (settings, modParams)

	    local hidden_br424 = {
			["1_fake.lua"] = true,
			["2_fake.lua"] = true,
			["3_fake.lua"] = true,
        }
        local hidden_br425 = {
			["1_fake.lua"] = true,
			["2_fake.lua"] = true,
			["3_fake.lua"] = true,
			["4_fake.lua"] = true,
			["5_fake.lua"] = true,
			["6_fake.lua"] = true,
			["7_fake.lua"] = true,
			["8_fake.lua"] = true,
            ["9_fake.lua"] = true,
            ["10_fake.lua"] = true,
            ["11_fake.lua"] = true,
        }
        local hidden_br426 = {
			["1_fake.lua"] = true,
			["2_fake.lua"] = true,
			["3_fake.lua"] = true,
			["4_fake.lua"] = true,
			["5_fake.lua"] = true,
			["6_fake.lua"] = true,
			["7_fake.lua"] = true,
			["8_fake.lua"] = true,
		}

		local modelFilter_br424 = function(fileName, data)
			local modelName = fileName:match('/br424_([^/]*.lua)')
			return (modelName==nil or hidden_br424[modelName]~=true)
		end
        local modelFilter_br425 = function(fileName, data)
			local modelName = fileName:match('/br425_([^/]*.lua)')
			return (modelName==nil or hidden_br425[modelName]~=true)
		end
        local modelFilter_br426 = function(fileName, data)
			local modelName = fileName:match('/br426_([^/]*.lua)')
			return (modelName==nil or hidden_br426[modelName]~=true)
		end

		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["br424fake"] == 0 then
				addFileFilter("multipleUnit", modelFilter_br424)
			end
            if params["br425fake"] == 0 then
				addFileFilter("multipleUnit", modelFilter_br425)
			end
            if params["br426fake"] == 0 then
				addFileFilter("multipleUnit", modelFilter_br426)
			end
		else
			addFileFilter("multipleUnit", modelFilter_br424)
			addFileFilter("multipleUnit", modelFilter_br425)
			addFileFilter("multipleUnit", modelFilter_br426)
		end
	end
	}
end
