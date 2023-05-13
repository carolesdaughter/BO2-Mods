init() {
    level thread OnPlayerConnected();
}

OnPlayerConnected() {
    for(;;) {
        level waittill("connected", player);

        self IPrintLnBold("Infinite Sprint Enabled - Made By Magnet");

        player thread OnPlayerSpawned();
    }
}

OnPlayerSpawned() {
    level endon("game_ended");
    self endon("disconnect");

    for(;;) {
        self waittill("spawned_player");
        self setperk("specialty_unlimitedsprint");
    }
}