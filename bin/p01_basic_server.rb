require 'rack'


class SimpleApp
  def self.call(env)

    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/html'
    res.write("Lyrics:
(Verse 1)
Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's super chinese

Tianyu DUAN Tianyu DUAN Tianyu DUAN

Tianyu,
He likes to draw penises, and he's kind of dirty, He's Tianyu Duan.

Tianyu,
He's a poke master, and he really likes Charizard, He's Tianyu Duan.

Tianyu,
pretends he's Ryu, and he throws them fireballs, He's Tian-ryu.

Tianyu,
He's so Chinese, that he would name a cat, Chairman Meow.

Tianyu has a thing for making things AWKWARD
Tianyu has a thing for taking things to another level
Tianyu has a thing for for breaking all boundaries
Tianyu has a thing for for eating FRIED CHICKEN.

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's super chinese

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN

Tianyu,
Pandas and soy sauce, that's what he likes, He's Tianyu Duan.

Tianyu
He's William Hung, to the power of penis, He's Tianyu Duan.

Tianyu,
He's gonna be famous, 69 Times Platinum, He's Tianyu Duan.

Tianyu,
Surpised He's not Korean, Cuz he plays a lotta Starcraft, He's Tianyu Duan

(Verse 2 Rap Solo)
Awwwwww.. Shittttt CHINATOWN!
TDUAN IN DA HOUSEEE!!!

yeah yeah, here we go.
I'd gone platinum mothafucka take a look at me
straight up plowing bitches who ever they may be
Bustings 5 gs, money danglin from my coat
you cant stop me mothafucka cause i'll slit your throat

Take a picture, trick (trick)
i'd gone Platinum, bitch (bitch)
Drinkin' Santanta champ
cause its so crisp (crisp)
I got my platinum record
and you aint got shit (shit)
i'm rolling in dough,
fuck! you might as well quit!

I'm on a luxury jet, doing coke and shit,
the ladies sniffing, the coke thats on my dick
but this isnt fantasy, this is real as it gets
i'd gone platinum motherfucker
dont you ever forget!

(Verse 3 )
TianyuX16
Tianyu has a thing for edge guarding all the time,
Tianyu has a thing for being better than Justin Bieber,
Tianyu has a thing for BEING AWESOME (Yeah)
Tianyu has a thing for eating MORE fried Chicken.

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN
Give him a panda!

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN.")
    res.finish
  end
end

class RackApplication
  def self.call(env)
    ['200', {'Content-Type' => 'text/html'}, ["Lyrics:
(Verse 1)
Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's super chinese

Tianyu DUAN Tianyu DUAN Tianyu DUAN

Tianyu,
He likes to draw penises, and he's kind of dirty, He's Tianyu Duan.

Tianyu,
He's a poke master, and he really likes Charizard, He's Tianyu Duan.

Tianyu,
pretends he's Ryu, and he throws them fireballs, He's Tian-ryu.

Tianyu,
He's so Chinese, that he would name a cat, Chairman Meow.

Tianyu has a thing for making things AWKWARD
Tianyu has a thing for taking things to another level
Tianyu has a thing for for breaking all boundaries
Tianyu has a thing for for eating FRIED CHICKEN.

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's super chinese

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN

Tianyu,
Pandas and soy sauce, that's what he likes, He's Tianyu Duan.

Tianyu
He's William Hung, to the power of penis, He's Tianyu Duan.

Tianyu,
He's gonna be famous, 69 Times Platinum, He's Tianyu Duan.

Tianyu,
Surpised He's not Korean, Cuz he plays a lotta Starcraft, He's Tianyu Duan

(Verse 2 Rap Solo)
Awwwwww.. Shittttt CHINATOWN!
TDUAN IN DA HOUSEEE!!!

yeah yeah, here we go.
I'd gone platinum mothafucka take a look at me
straight up plowing bitches who ever they may be
Bustings 5 gs, money danglin from my coat
you cant stop me mothafucka cause i'll slit your throat

Take a picture, trick (trick)
i'd gone Platinum, bitch (bitch)
Drinkin' Santanta champ
cause its so crisp (crisp)
I got my platinum record
and you aint got shit (shit)
i'm rolling in dough,
fuck! you might as well quit!

I'm on a luxury jet, doing coke and shit,
the ladies sniffing, the coke thats on my dick
but this isnt fantasy, this is real as it gets
i'd gone platinum motherfucker
dont you ever forget!

(Verse 3 )
TianyuX16
Tianyu has a thing for edge guarding all the time,
Tianyu has a thing for being better than Justin Bieber,
Tianyu has a thing for BEING AWESOME (Yeah)
Tianyu has a thing for eating MORE fried Chicken.

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN
Give him a panda!

Tianyu DUAN Tianyu DUAN Tianyu DUAN
He's really asian

Tianyu DUAN Tianyu DUAN Tianyu DUAN."]]
  end
end


Rack::Server.start(
  app: SimpleApp,
  Port: 3000
)
