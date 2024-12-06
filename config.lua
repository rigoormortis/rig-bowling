return {
    location = vec3(752.93, -774.53, 26.34),
    ticketPed = {
        coords = vec4(756.37, -774.79, 25.34, 90),
        model = 'a_m_m_business_01',
        options = {
            {
                label = 'Buy Group Ticket',
                icon = 'fa-solid fa-users',
                onSelect = function(data)
                    TriggerServerEvent('rig-bowling:server:buyTicket', 'group')
                end
            },
            {
                label = 'Buy Solo Ticket',
                icon = 'fa-solid fa-user',
                onSelect = function(data)
                    TriggerServerEvent('rig-bowling:server:buyTicket', 'solo')
                end
            }
        }
    },
    laneLocations = {
        vec3(747.83, -781.82, 25.5),
        vec3(747.83, -779.78, 25.5),
        vec3(747.83, -777.67, 25.5),
        vec3(747.83, -775.56, 25.5),
        vec3(747.83, -773.45, 25.5),
        vec3(747.83, -771.34, 25.5),
        vec3(747.83, -767.21, 25.5),
    }
}
