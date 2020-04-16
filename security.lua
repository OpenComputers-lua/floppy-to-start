-- MANUAL
-- Make a floppy disk. Open /mnt/[floppy address]. Create file "pass". Write there your password.
-- For the strongest protection you need 2 disks. If someone steals the disk, it removes all data from pc.
-- !!!CREATE FILE pass ON THE SECOND DISK!!! IT CAN BE EMPTY BUT IT HAS TO BE!!!
local file = io.open(/mnt/***/pass, "rb") --enter 2nd disk address instead of ***
if not file then 
os.remove("bin")
os.remove("boot")
os.remove("dev")
os.remove("etc")
os.remove("home")
os.remove("init.lua")
os.remove("lib")
os.remove("mnt")
os.remove("tmp")
os.remove("usr")
os.exit()
end
local a = --    <-- write your password here
print("Enter the password")
local file = io.open(/mnt/***/pass, "rb") --enter floppy address instead of ***
if not file then os.exit() end
elseif a ~= file then os.exit()
else print("Welcome") end
