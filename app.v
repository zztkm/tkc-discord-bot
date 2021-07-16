module main

import os
import terisback.discordv as vd
import zztkm.vdotenv

fn on_ping(mut client vd.Client, evt &vd.MessageCreate) {
	if evt.content == '!ping' {
		client.channel_message_send(evt.channel_id, content: 'pong!') or {}
	}
}

fn main() {
	// vdotenv.load()

	token := os.getenv('DISCORD_BOT_TOKEN')
	mut client := vd.new(token: token) ?
	client.on_message_create(on_ping)
	client.run().wait()
}
