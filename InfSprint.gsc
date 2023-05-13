init() {
    level thread OnPlayerConnect();
}

OnPlayerConnect() {
    for(;;) {
        level waittill("connected", player);

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
