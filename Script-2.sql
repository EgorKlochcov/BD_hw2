create table if not exists Genre (id serial primary key,
name varchar(60) not null
);

create table if not exists Artist (id serial primary key,
nickname varchar(60) not null
);

create table if not exists Genres_Artist (Genre_id integer references Genre(id),
Artist_id integer references Artist(id), 
constraint pk primary key (Genre_id, Artist_id)
);

create table if not exists Album (id serial primary key,
name varchar(60) not null, 
date_release date not null
);

create table if not exists Albums_Artist (Album_id integer references Album(id),
Artist_id integer references Artist(id),
constraint pk2 primary key (Album_id, Artist_id)
);

create table if not exists Track (id serial primary key, 
name varchar(60) not null,
duration integer not null, 
Album_id integer references Album(id)
);

create table if not exists Сollection (id serial primary key, 
name varchar(60) not null,
date_release date not null
);

create table if not exists Track_Сollection (Track_id integer references Track(id),
Сollection_id integer references Сollection(id),
constraint pk3 primary key (Track_id, Сollection_id)
);

