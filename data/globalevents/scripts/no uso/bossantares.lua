local raids =

    {

        [1] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'monday'},

                hour = 12,

                minu = 30

            },

        [2] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'tuesday'},

                hour = 12,

                minu = 30
            },

        [3] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'wednesday'},

                hour = 12,

                minu = 30

            },
        [4] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'thursday'},

                hour = 12,

                minu = 30

            },
        [5] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'saturday'},

                hour = 12,

                minu = 30

            },
        [6] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'sunday'},

                hour = 12,

                minu = 30

            },
        [7] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'friday'},

                hour = 12,

                minu = 30


            },
	    [8] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'monday'},

                hour = 21,

                minu = 30

            },
			[9] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'tuesday'},

                hour = 21,

                minu = 30

            },
			[10] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'wednesday'},

                hour = 21,

                minu = 30

            },
			[11] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'thursday'},

                hour = 21,

                minu = 30

            },
			[12] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'sunday'},

                hour = 21,

                minu = 30

            },
			[13] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'friday'},

                hour = 21,

                minu = 30

            },
			[14] =

            {

                name = 'Sasuke Boss',

                type = 'weekly',

                days = {'friday'},

                hour = 21,

                minu = 30

            },

    }


local last_execsutes = {}


function onThink(interval, lastExecution, thinkInterval)

    local static_time = os.time()

    for k, raid in ipairs(raids) do

        if (raid.type == 'weekly') then

            local day = os.date("%A", static_time):lower()

            if isInArray(raid.days, day) then

                local hour = tonumber(os.date("%H", static_time))

                if (raid.hour == hour) then

                    local minute = tonumber(os.date("%M", static_time))

                    if (raid.minu == minute) then

                        local day_number = tonumber(os.date("%d", static_time))

                        if (last_execsutes[k] ~= day_number) then

                            last_execsutes[k] = day_number

                            doExecuteRaid(raid.name)

                        end

                    end

                end

            end

        elseif (raid.type == 'exact') then

            local month = tonumber(os.date("%m", static_time))

            if (raid.date.month == month) then

                local day = tonumber(os.date("%d", static_time))

                if (raid.date.day == day) then

                    local hour = tonumber(os.date("%H", static_time))

                    if (raid.hour == hour) then

                        local minute = tonumber(os.date("%M", static_time))

                        if (raid.minu == minute) then

                            if (last_execsutes[k] ~= day) then

                                last_execsutes[k] = day

                                doExecuteRaid(raid.name)

                            end

                        end

                    end

                end

            end

        end

    end

    return true

end