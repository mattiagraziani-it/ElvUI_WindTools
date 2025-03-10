local W, F, E, L = unpack((select(2, ...)))
local S = W.Modules.Skins

local _G = _G

local hooksecurefunc = hooksecurefunc

function S:AngryKeystones()
    if not E.private.WT.skins.enable or not E.private.WT.skins.addons.angryKeystones then
        return
    end

    hooksecurefunc(
        ScenarioObjectiveTracker.ChallengeModeBlock,
        "Activate",
        function(block)
            if block and block.TimerFrame and not block.TimerFrame.__windSkin then
                for _, bar in pairs {block.TimerFrame.Bar2, block.TimerFrame.Bar3} do
                    bar:SetTexture(E.media.blankTex)
                    bar:SetWidth(2)
                    bar:SetAlpha(0.618)
                    bar:SetHeight(bar:GetHeight() + 2)
                end
                block.TimerFrame.__windSkin = true
            end
        end
    )
end

S:AddCallbackForAddon("AngryKeystones")
