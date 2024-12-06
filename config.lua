return {
    -- Bowling Alley
    location = vec3(752.93, -774.53, 26.34),
    peds = {
        -- Ped to buy a ticket to bowl
        ticketPed = {
            coords = vec4(756.37, -774.79, 25.34, 90),
            model = 'a_m_m_business_01'
        },
        -- Ped to cook food
        cookPed = {
            coords = vec4(756.37, -768.02, 25.34, 90),
            model = 's_m_m_linecook'
        },
    },
    -- Lane locations
    laneLocations = {
        vec3(747.83, -781.82, 25.5),
        vec3(747.83, -779.78, 26.5),
        vec3(747.83, -777.67, 26.5),
        vec3(747.83, -775.56, 26.5),
        vec3(747.83, -773.45, 26.5),
        vec3(747.83, -771.34, 26.5),
        vec3(747.83, -769.23, 26.5),
        vec3(747.83, -767.21, 26.5),
    }
}
