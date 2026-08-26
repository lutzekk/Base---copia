local storage = 344122 -- Storage para verificar si el jugador ya recibió los ítems

-- Ítems comunes para todos los jugadores
local commonItems = {

}

-- Ítems específicos por ID de vocación
local vocationItems = {
    [1] = { -- Goku (ID de la vocación)
        {itemid = 2313, count = 1}, -- Magic Sword
        {itemid = 2307, count = 1},  -- Amulet of Life
        {itemid = 2300, count = 1},  -- Amulet of Life
        {itemid = 2304, count = 1},  -- Amulet of Life
        {itemid = 2308, count = 1},  -- Amulet of Life
        {itemid = 2286, count = 1},  -- Amulet of Life
        {itemid = 2305, count = 1},  -- Amulet of Life
        {itemid = 2309, count = 1},  -- Amulet of Life
        {itemid = 2269, count = 1},  -- Amulet of Life
        {itemid = 2312, count = 1},  -- Amulet of Life
        {itemid = 2287, count = 1},  -- Amulet of Life
        {itemid = 2315, count = 1}  -- Amulet of Life
    },
    [21] = { -- Vegeta (ID de la vocación)
    {itemid = 2311, count = 1}, -- Magic Sword
    {itemid = 2297, count = 1},  -- Amulet of Life
    {itemid = 2310, count = 1} , -- Amulet of Life
    {itemid = 2268, count = 1}  ,-- Amulet of Life
    {itemid = 2308, count = 1}  ,-- Amulet of Life
    {itemid = 2267, count = 1}  ,-- Amulet of Life
    {itemid = 2295, count = 1}  ,-- Amulet of Life
    {itemid = 2309, count = 1}  ,-- Amulet of Life
    {itemid = 2269, count = 1}  ,-- Amulet of Life
    {itemid = 2312, count = 1}  ,-- Amulet of Life
    {itemid = 2287, count = 1}  ,-- Amulet of Life
    {itemid = 2315, count = 1}  -- Amulet of Life
    },
    [181] = { 
    {itemid = 2271, count = 1}, -- Magic Sword
    {itemid = 2288, count = 1} , -- Amulet of Life
    {itemid = 2276, count = 1} , -- Amulet of Life
    {itemid = 2266, count = 1} , -- Amulet of Life
    {itemid = 2308, count = 1} , -- Amulet of Life
    {itemid = 2290, count = 1} , -- Amulet of Life
    {itemid = 2314, count = 1} , -- Amulet of Life
    {itemid = 2309, count = 1} , -- Amulet of Life
    {itemid = 2269, count = 1} , -- Amulet of Life
    {itemid = 2312, count = 1} , -- Amulet of Life
    {itemid = 2287, count = 1} , -- Amulet of Life
    {itemid = 2315, count = 1}  -- Amulet of Life
    },
    [301] = { 
    {itemid = 2296, count = 1}, -- Magic Sword
    {itemid = 2288, count = 1},  -- Amulet of Life
    {itemid = 2291, count = 1},  -- Amulet of Life
    {itemid = 2270, count = 1},  -- Amulet of Life
    {itemid = 2308, count = 1},  -- Amulet of Life
    {itemid = 2278, count = 1},  -- Amulet of Life
    {itemid = 2314, count = 1},  -- Amulet of Life
    {itemid = 2309, count = 1},  -- Amulet of Life
    {itemid = 2269, count = 1},  -- Amulet of Life
    {itemid = 2312, count = 1},  -- Amulet of Life
    {itemid = 2287, count = 1},  -- Amulet of Life
    {itemid = 2315, count = 1}  -- Amulet of Life
    },
    [61] = { 
      {itemid = 2311, count = 1}, -- Magic Sword
      {itemid = 2277, count = 1},  -- Amulet of Life
      {itemid = 2310, count = 1},  -- Amulet of Life
      {itemid = 2266, count = 1},  -- Amulet of Life
      {itemid = 2308, count = 1},  -- Amulet of Life
      {itemid = 2267, count = 1},  -- Amulet of Life
      {itemid = 2314, count = 1},  -- Amulet of Life
      {itemid = 2309, count = 1},  -- Amulet of Life
      {itemid = 2269, count = 1},  -- Amulet of Life
      {itemid = 2312, count = 1},  -- Amulet of Life
      {itemid = 2287, count = 1},  -- Amulet of Life
      {itemid = 2315, count = 1} -- Amulet of Life
      },
      [121] = { 
        {itemid = 2311, count = 1}, -- Magic Sword
        {itemid = 2272, count = 1},  -- Amulet of Life
        {itemid = 2310, count = 1},  -- Amulet of Life
        {itemid = 2268, count = 1},  -- Amulet of Life
        {itemid = 2308, count = 1},  -- Amulet of Life
        {itemid = 2267, count = 1},  -- Amulet of Life
        {itemid = 2314, count = 1},  -- Amulet of Life
        {itemid = 2309, count = 1},  -- Amulet of Life
        {itemid = 2269, count = 1},  -- Amulet of Life
        {itemid = 2312, count = 1},  -- Amulet of Life
        {itemid = 2287, count = 1},  -- Amulet of Life
        {itemid = 2315, count = 1}  -- Amulet of Life
        },
        [341] = { 
          {itemid = 2299, count = 1}, -- Magic Sword
          {itemid = 2301, count = 1},  -- Amulet of Life
          {itemid = 2291, count = 1},  -- Amulet of Life
          {itemid = 2294, count = 1},  -- Amulet of Life
          {itemid = 2308, count = 1},  -- Amulet of Life
          {itemid = 2286, count = 1},  -- Amulet of Life
          {itemid = 2295, count = 1},  -- Amulet of Life
          {itemid = 2309, count = 1},  -- Amulet of Life
          {itemid = 2269, count = 1},  -- Amulet of Life
          {itemid = 2312, count = 1} , -- Amulet of Life
          {itemid = 2287, count = 1} , -- Amulet of Life
          {itemid = 2315, count = 1},  -- Amulet of Life
          },
          [261] = { 
            {itemid = 2293, count = 1}, -- Magic Sword
            {itemid = 2285, count = 1} , -- Amulet of Life
            {itemid = 2303, count = 1} , -- Amulet of Life
            {itemid = 2294, count = 1} , -- Amulet of Life
            {itemid = 2308, count = 1} , -- Amulet of Life
            {itemid = 2278, count = 1} , -- Amulet of Life
            {itemid = 2295, count = 1} , -- Amulet of Life
            {itemid = 2309, count = 1} , -- Amulet of Life
            {itemid = 2269, count = 1} , -- Amulet of Life
            {itemid = 2312, count = 1} , -- Amulet of Life
            {itemid = 2287, count = 1} , -- Amulet of Life
            {itemid = 2315, count = 1}  -- Amulet of Life
            },
            [381] = { 
              {itemid = 2311, count = 1}, -- Magic Sword
              {itemid = 2282, count = 1},  -- Amulet of Life
              {itemid = 2289, count = 1} , -- Amulet of Life
              {itemid = 2281, count = 1}  ,-- Amulet of Life
              {itemid = 2306, count = 1}  ,-- Amulet of Life
              {itemid = 2278, count = 1}  ,-- Amulet of Life
              {itemid = 2314, count = 1} , -- Amulet of Life
              {itemid = 2298, count = 1} , -- Amulet of Life
              {itemid = 2269, count = 1} , -- Amulet of Life
              {itemid = 2312, count = 1}  ,-- Amulet of Life
              {itemid = 2287, count = 1}  ,-- Amulet of Life
              {itemid = 2315, count = 1}  ,-- Amulet of Life
            },
            [401] = { 
              {itemid = 2311, count = 1}, -- Magic Sword
              {itemid = 2261, count = 1},  -- Amulet of Life
              {itemid = 2310, count = 1},  -- Amulet of Life
              {itemid = 2268, count = 1},  -- Amulet of Life
              {itemid = 2308, count = 1},  -- Amulet of Life
              {itemid = 2278, count = 1},  -- Amulet of Life
              {itemid = 2295, count = 1},  -- Amulet of Life
              {itemid = 2309, count = 1},  -- Amulet of Life
              {itemid = 2269, count = 1},  -- Amulet of Life
              {itemid = 2312, count = 1},  -- Amulet of Life
              {itemid = 2287, count = 1},  -- Amulet of Life
              {itemid = 2315, count = 1}  -- Amulet of Life
            },
            [461] = { 
              {itemid = 2311, count = 1},
              {itemid = 2261, count = 1},
              {itemid = 2310, count = 1},
              {itemid = 2268, count = 1},
              {itemid = 2308, count = 1},
              {itemid = 2278, count = 1},
              {itemid = 2314, count = 1},
              {itemid = 2309, count = 1},
              {itemid = 2269, count = 1},
              {itemid = 2312, count = 1},
              {itemid = 2287, count = 1},
              {itemid = 2315, count = 1}
            },
            [461] = { 
              {itemid = 2311, count = 1},
              {itemid = 2261, count = 1},
              {itemid = 2310, count = 1},
              {itemid = 2268, count = 1},
              {itemid = 2308, count = 1},
              {itemid = 2278, count = 1},
              {itemid = 2314, count = 1},
              {itemid = 2309, count = 1},
              {itemid = 2269, count = 1},
              {itemid = 2312, count = 1},
              {itemid = 2287, count = 1},
              {itemid = 2315, count = 1}
            },
            [321] = { 
              {itemid = 2296, count = 1}, -- Magic Sword
              {itemid = 2288, count = 1},  -- Amulet of Life
              {itemid = 2291, count = 1},  -- Amulet of Life
              {itemid = 2270, count = 1},  -- Amulet of Life
              {itemid = 2308, count = 1},  -- Amulet of Life
              {itemid = 2278, count = 1},  -- Amulet of Life
              {itemid = 2314, count = 1},  -- Amulet of Life
              {itemid = 2309, count = 1},  -- Amulet of Life
              {itemid = 2269, count = 1},  -- Amulet of Life
              {itemid = 2312, count = 1},  -- Amulet of Life
              {itemid = 2287, count = 1},  -- Amulet of Life
              {itemid = 2315, count = 1}  -- Amulet of Life
              },

              [141] = { 
                {itemid = 2296, count = 1},
                {itemid = 2316, count = 1},
                {itemid = 2274, count = 1},
                {itemid = 2302, count = 1},
                {itemid = 2308, count = 1},
                {itemid = 2278, count = 1},
                {itemid = 2295, count = 1},
                {itemid = 2309, count = 1},
                {itemid = 2269, count = 1},
                {itemid = 2312, count = 1},
                {itemid = 2287, count = 1},
                {itemid = 2315, count = 1}
                },
                [441] = { 
                  {itemid = 2313, count = 1},
                  {itemid = 2307, count = 1},
                  {itemid = 2300, count = 1},
                  {itemid = 2266, count = 1},
                  {itemid = 2308, count = 1},
                  {itemid = 2290, count = 1},
                  {itemid = 2305, count = 1},
                  {itemid = 2309, count = 1},
                  {itemid = 2269, count = 1},
                  {itemid = 2312, count = 1},
                  {itemid = 2287, count = 1},
                  {itemid = 2315, count = 1}
                  },
                  [201] = { 
                    {itemid = 2296, count = 1},
                    {itemid = 2272, count = 1},
                    {itemid = 2310, count = 1},
                    {itemid = 2266, count = 1},
                    {itemid = 2308, count = 1},
                    {itemid = 2267, count = 1},
                    {itemid = 2295, count = 1},
                    {itemid = 2309, count = 1},
                    {itemid = 2269, count = 1},
                    {itemid = 2312, count = 1},
                    {itemid = 2287, count = 1},
                    {itemid = 2315, count = 1}
                    },
                    [221] = { 
                      {itemid = 2283, count = 1},
                      {itemid = 2285, count = 1},
                      {itemid = 2276, count = 1},
                      {itemid = 2294, count = 1},
                      {itemid = 2263, count = 1},
                      {itemid = 2267, count = 1},
                      {itemid = 2295, count = 1},
                      {itemid = 2280, count = 1},
                      {itemid = 2269, count = 1},
                      {itemid = 2312, count = 1},
                      {itemid = 2287, count = 1},
                      {itemid = 2315, count = 1}
                      },
                      [81] = { 
                        {itemid = 2296, count = 1},
                        {itemid = 2316, count = 1},
                        {itemid = 2310, count = 1},
                        {itemid = 2266, count = 1},
                        {itemid = 2308, count = 1},
                        {itemid = 2267, count = 1},
                        {itemid = 2314, count = 1},
                        {itemid = 2309, count = 1},
                        {itemid = 2269, count = 1},
                        {itemid = 2312, count = 1},
                        {itemid = 2287, count = 1},
                        {itemid = 2315, count = 1}
                        },
                        [361] = { 
                          {itemid = 2279, count = 1},
                          {itemid = 2288, count = 1},
                          {itemid = 2310, count = 1},
                          {itemid = 2294, count = 1},
                          {itemid = 2308, count = 1},
                          {itemid = 2290, count = 1},
                          {itemid = 2314, count = 1},
                          {itemid = 2309, count = 1},
                          {itemid = 2269, count = 1},
                          {itemid = 2312, count = 1},
                          {itemid = 2287, count = 1},
                          {itemid = 2315, count = 1}
                          },
                          [481] = { 
                            {itemid = 2293, count = 1},
                            {itemid = 2295, count = 1},
                            {itemid = 2264, count = 1},
                            {itemid = 2294, count = 1},
                            {itemid = 2308, count = 1},
                            {itemid = 2278, count = 1},
                            {itemid = 2314, count = 1},
                            {itemid = 2309, count = 1},
                            {itemid = 2269, count = 1},
                            {itemid = 2312, count = 1},
                            {itemid = 2287, count = 1},
                            {itemid = 2315, count = 1}
                            },
                            [101] = { 
                              {itemid = 2311, count = 1},
                              {itemid = 2297, count = 1},
                              {itemid = 2310, count = 1},
                              {itemid = 2266, count = 1},
                              {itemid = 2308, count = 1},
                              {itemid = 2267, count = 1},
                              {itemid = 2314, count = 1},
                              {itemid = 2309, count = 1},
                              {itemid = 2269, count = 1},
                              {itemid = 2312, count = 1},
                              {itemid = 2287, count = 1},
                              {itemid = 2315, count = 1}
                              },
                              [241] = { 
                                {itemid = 2283, count = 1},
                                {itemid = 2285, count = 1},
                                {itemid = 2276, count = 1},
                                {itemid = 2294, count = 1},
                                {itemid = 2308, count = 1},
                                {itemid = 2290, count = 1},
                                {itemid = 2314, count = 1},
                                {itemid = 2309, count = 1},
                                {itemid = 2269, count = 1},
                                {itemid = 2312, count = 1},
                                {itemid = 2287, count = 1},
                                {itemid = 2315, count = 1}
                                },
                                [281] = { 
                                  {itemid = 2293, count = 1},
                                  {itemid = 2285, count = 1},
                                  {itemid = 2303, count = 1},
                                  {itemid = 2294, count = 1},
                                  {itemid = 2308, count = 1},
                                  {itemid = 2278, count = 1},
                                  {itemid = 2314, count = 1},
                                  {itemid = 2309, count = 1},
                                  {itemid = 2269, count = 1},
                                  {itemid = 2312, count = 1},
                                  {itemid = 2287, count = 1},
                                  {itemid = 2315, count = 1}
                                  },
                                  [421] = { 
                                    {itemid = 2311, count = 1},
                                    {itemid = 2288, count = 1},
                                    {itemid = 2289, count = 1},
                                    {itemid = 2281, count = 1},
                                    {itemid = 2308, count = 1},
                                    {itemid = 2278, count = 1},
                                    {itemid = 2314, count = 1},
                                    {itemid = 2298, count = 1},
                                    {itemid = 2269, count = 1},
                                    {itemid = 2312, count = 1},
                                    {itemid = 2287, count = 1},
                                    {itemid = 2315, count = 1}
                                    },
                                    [161] = { 
                                      {itemid = 2311, count = 1}, -- Magic Sword
                                      {itemid = 2272, count = 1},  -- Amulet of Life
                                      {itemid = 2310, count = 1},  -- Amulet of Life
                                      {itemid = 2268, count = 1},  -- Amulet of Life
                                      {itemid = 2308, count = 1},  -- Amulet of Life
                                      {itemid = 2267, count = 1},  -- Amulet of Life
                                      {itemid = 2314, count = 1},  -- Amulet of Life
                                      {itemid = 2309, count = 1},  -- Amulet of Life
                                      {itemid = 2269, count = 1},  -- Amulet of Life
                                      {itemid = 2312, count = 1},  -- Amulet of Life
                                      {itemid = 2287, count = 1},  -- Amulet of Life
                                      {itemid = 2315, count = 1}  -- Amulet of Life
                                      },
            


}

function onLogin(player)
    if player:getGroup():getId() < 3 then
        local receivedItems = player:getStorageValue(storage)

        local vocationId = player:getVocation():getId()
        print("ID de vocación:", vocationId)
        print("Ítems para la vocación:", vocationItems[vocationId])
       

        if receivedItems == -1 then
            -- Crear la Bag (mochila) en el slot del collar
            local bag = player:addItem(2003, 1, false, 1, CONST_SLOT_NECKLACE)

            if bag then
                -- Agregar ítems comunes dentro de la Bag
                for _, item in ipairs(commonItems) do
                    bag:addItem(item.itemid, item.count or 1)
                end

                -- Obtener el ID de la vocación
                local vocationId = player:getVocation():getId()

                -- Si la vocación tiene ítems específicos, agregarlos dentro de la Bag
                if vocationItems[vocationId] then
                    for _, item in ipairs(vocationItems[vocationId]) do
                        bag:addItem(item.itemid, item.count or 1)
                    end
                end

                player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "¡Bienvenido <3! Tu equipo inicial ha sido entregado.")
                player:setStorageValue(storage, 1) -- Guardar en el storage que ya recibió los ítems
            else
                player:sendTextMessage(MESSAGE_STATUS_WARNING, "Error al crear la mochila en el slot del collar.")
            end
        end
    end
    return true
end
