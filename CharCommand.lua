--[[
    Char Command
    Created by LoveliestJacob
    Open sourced and free for everyone. :)

    Devforum post: 

    Commands: "char <username>", "unchar"
]]

local Settings = {}
-- Settings Table, do not modify.

Settings.Permissions = {}
local Permissions = Settings.Permissions
-- Permissions Table, do not modify.

Settings._Version = "v2.0.0"
-- Format: Release.MinorRelease.Patch

--[[
    Bellow are the settings this model provides.
    If you have any questions, please reply to the Devforum post.
    Or if you can't reply, message me on Roblox.

    This script has a LOT of comments, so I hope it helps you better understand everything.
    (Sorry that I didn't do this in v1.)

    Some questions and answers:

    Q: Can this be used for impersonation?
    A: Unless you hide player names yourself, no. As the player's overhead display name does not get changed.

    Q: Will this support the new chat system coming to Roblox?
    A: Yep! Just wait for v2.5.0 to come out.

    Q: Is this safe?
    A: Char commands in general are not harmful by any means.
    This model is open sourced, if it had a backdoor, you could see it yourself!
    
    Q: How come something isnt working?
    A: Check output for any errors, if you can't figure it out, contact me.

    If you have any other questions, use the contact methods mentioned above!
]]

Settings.ChatPrefix = "/"
-- This is the character that you must provide in front the command.
-- For example; "/char" would work but ";char" wouldn't if the prefix is set to "/".

Settings.KeepSize = false
-- This prevents the player's scale from changing when they char themselves.
-- This does not do anything on r6 avatars.

Settings.HideMessage = true
-- Hide the command usage from showing in chat, helps with spam.

Settings.SystemPrefix = "{System}"
-- This is what shows up before every chat message/response.
-- Example; "{system} Your character has been changed to look like LoveliestJacob!"

Permissions.FreeForAll = false
-- If you enable this, everyone will be able to use the char command.
-- When this is enabled, it invalidates every other permission setting.

Permissions.RequireGamePassID = nil
-- You can provide a game pass ID if you would like one to be required to use the char commands.
-- Users with the game pass do not have to be in the whitelist.

Permissions.RequireAssetID = nil
-- This can be used if you would like to required a t-shirt, shirt, etc to use the char commands.
-- Users with the game pass do not have to be in the whitelist.

Permissions.GroupRank.GroupID = nil
Permissions.GroupRank.Ranks = {}
--[[
    Anyone with any of the ranks in the table will be allowed to use the char commands.
    If you do not change the group ID, but change the group rank. The group ID will be changed to
    the group that owns the game. If a group does not own the game, then the rank setting will not do
    anything if the group ID is nil.
]]

Permissions.Whitelist = {}
-- You can provide a table of user IDs of who is allowed to use the char commands.
-- Players in this table skip the game pass and asset requirement if there is any.

Permissions.GameCreator = true
-- If this is enabled, this will automatically add the game creator to the whitelist.
-- This includes group owner as well, if the game is owned by a group.

Permissions.GameCreatorsFriends = false
-- If this is enabled, this will automatically add the game creator's friends to the whitelist.
-- This does not work if the game is owned by a group.

--[[
    This is the end of the settings, changing things from this point forward can result in the
    whole script breaking! If you want to make something cool out of this, show me, I would be
    more then glad to try it out.
]]

local AllowedUsers = {}
-- Table of users who can use the commands.

