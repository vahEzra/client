local key = ...  -- this will receive the string argument passed in
local whitelistedKeysList = {
	-- random letters + numbers codes.
	"4b2f9e7a4d3c8f1a6e7d9b2a4c3f5e9d",
	"9a7e6d4b3c5f2a1e7b9c8f6d4e2a3b7c",
	"1e3f7a9d5b4c2f8d6e7c9b3a5f2d4b8c",
	"6b9f3e7c2a4d8f1e5c3b7a9d2f4e6c5b",
	"3a7e6d9c5f2b4c1f8d7a3e6b9f5d2c4a",
	"5e2d9a3f7c4b8f1d6a9c5e3b2f7d4c8b",
	"9c8f2b4d3a7e6b5f1d4c8a9e3f7d6b2a",
	"7f3e5c9d2a8b6f4c1d9b2e6a5f7c3b9d",
	"c4f8a6e3d2b9f5a7e6d3c4b8a2f9d1c7",
	"d9a7e3b6f2c5a8d4b1c7f9a6e4d2c3f7",
	"1e9f7d3a6b2c5f8d4c9b7a5e3f6d2c4b",
	"7b4c9f5a3e8d6b1c2f7a9e5d3b6c4f8a",
	"3f7e2c9d5a4b8f1d6c3a7b9e5d2c4f6a",
	"8f2d3c7b5e4a6f9d1c7a5e3b8f2d4c6a",
	"c3b7f5d9a4e8c6f1d2b9a7e5f3c8d6b1",
	"f7a3c6d4b9e5a2c8f1d7b5e3c6a9d4f8",
	"9d4b2c7f3a6e8d5c1f9a3b7e4c2d6f8b",
	"a8f3c5d7e4b9c6a2f8b1d5e3c7a6d9f4",
	"6c9d4f2a7e3b8c5d1f6a9b4e3c7f2d8b",
	"e5a9c7d3f8b2a6c1d9f4b7e3a5c2d6f9",
	"1f4e3d6a8b9c7f5a3e2d4b9c6a7e5f2d",
	"7c3a9d2f5e8b4a6c1d7f9e3b2a5c8f4b",
	"2d8f3c7b5a4e9d1c6f3b8a7e5d9c4f2a",
	"4e7b3f2d9c6a8b1f5a3e9d4b7c2a6f8d",
	"a5c9d4f8b3e2a7f6c1d9b3e5c7a4f8d2",
	"c8f2a4d7e3b6c1d5f9b7e4a3c6d8f2a9",
	"d4b9f2c7a6e3f8a1d7c5e9b4a2c3f5d6",
	"9e4c3f7a2d8b6f1c5a9e3d7b2f4c5a8d",
	"7a3c5e2f8d1b6c9a4d7f5b3e9a2c8f6d",
	"b3f7e9a2d4c5f8b6a1d7c3e4f2a5b9d8",
	"5c8a9f2b3e7d6c1f4a9e5d3b7c2f4a6d",
	"2f4d3b7c5a8f1e6d9b3a4c7e5f2d6a9c",
	"7d2a9f5b3c8e6d1f4b9c2a5e7f3d8c4a",
	"3e9f7d4a8b6c2f1d7a5e3b4f6c9a8d5f",
	"a6f9b4e2d8c3f7a1d5e3c9f2a6d4b8e7",
	"c3f8d1a5e6b2f9d4a7c5e3b9f6a4d2c7",
	"d1a4c9f7e3b5a6d8f2c4b7a9e5d2f6b3",
	"f4d7a6e2c3b8f1d9a5e3c7b6f9d4a2c5",
	"9a6e3b8f2d4c5a7d9f3e1b6c4f7a8d2b",
	"2b9d5e3a4f7c8b6d1f3a9c5e4d7a2b6f",
	"6d3c8f7a2b9e4d5c1f3a7e6b2f9d4a5b",
	"a4c7e2d5b8f3a1d6f9b4e7c5a2d3f6b9",
	"f1d7c3a9e4b6f2a8d5c9b3f4e2a6d7b8",
	"d3f7b9a2e5c1f8a4d6b3e9c7a5f2d8b6",
	"3f8e2a7d9b5c4f6a1d3e7b2f9c8d5a4b",
	"8d3f9b4c2a7e5d6c1f3a9b7e4d8c2f5a",
	"c2f9a5d8e3b4c7f1d3a9b6e4f5d2c8a7",
	"d5a9b2e7c4f3a8b6d1e9f4c2a7d5b3f6",
	"9f3c7e1a6b5d2f8c4a9e3d7b5c2a4f6d",
	"a2d7f9b4c3e5a8d1f6c9b3e4a7d5f8b2",
	"6b3d2f8a7e1c9f5a3b4e6c7d2f9a8b5e",
	"4f7e2b8a9c1d6f3b5a9e4d7c3a6f2b5d",
	"7c5b9a2d4f3e6c1f8b3a5e9d2c7a4f8d",
	"a9e4d3f5b8c2a6f7d1c9e3b4a5f2d7c8",
	"c7b9f5a2d8e3b4c6f1a3d9e7a5f2b6d8",
	"f5a3c9b7d2e6c4a8d1f9e2b3f7a4c6d5",
	"2a8f3d9e7c5b4f6a3b1d9c7f2a4d6b8e",
	"6e9f2c8a5d7b3f4a1d6b9e2c7a5f8d3b",
	-- end
	
	-- random number only codes
	"73594823759843759283749582374958",
	"92837495823749582374958237495823",
	"49582374958237495823749582374958",
	"23749582374958237495823749582374",
	"58237495823749582374958237495823",
	"37495823749582374958237495823749",
	"95823749582374958237495823749582",
	"74958237495823749582374958237495",
	"58237495823749582374958237495823",
	"37495823749582374958237495823749",
	"95823749582374958237495823749582",
	"74958237495823749582374958237495",
	"58237495823749582374958237495823",
	"37495823749582374958237495823749",
	"95823749582374958237495823749582"
	-- end
}

print("Welcome to the Client Experience!")
wait(1)
print("Install Script Version 1.0")
wait(1)
print("Checking License...")
wait(2)
print("Done.")
if table.find(whitelistedKeysList, key)
  print("Whitelist Status Verified.")
  wait(3)
  print("Getting Latest Script.")
  wait(2)
  print("Lastest_Version-1.0")
  wait(1)
  print("Authorized.")
  wait(5)
  print("Please wait for this to be updated.")
else
  print("Whitelist Status Unverified.")
  wait(3)
  game.Players.LocalPlayer:Kick("client | please use a correct license key.")
end
