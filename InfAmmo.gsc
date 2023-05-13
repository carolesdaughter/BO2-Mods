init() {
    level thread OnPlayerConnected();
}

OnPlayerConnected() {
    for(;;) {
        level waittill("connected", player);

        self IPrintLnBold("Infinite Ammo Given - Made By Magnet");

        player thread GrantMaxAmmo();
    }
}

GrantMaxAmmo() {
    level endon("game_ended");
    self endon("disconnect");

    for (;;) {
        Weapon = self getCurrentWeapon();
        MaxAmmo = self getWeaponAmmoClip(Weapon) + self getWeaponAmmoStock(Weapon);

        self giveWeaponAmmo(Weapon, MaxAmmo);

        waittillframeend;
    }
}