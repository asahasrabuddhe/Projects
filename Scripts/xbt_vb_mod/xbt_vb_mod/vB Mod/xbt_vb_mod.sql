alter table attachment add bt_completed int;
alter table attachment add bt_info_hash binary(20);
alter table attachment add bt_leechers int;
alter table attachment add bt_name varchar(255);
alter table attachment add bt_seeders int;
alter table attachment add bt_size bigint;
alter table attachment add bt_tracker varchar(255);
alter table attachment add key (bt_info_hash(20));
alter table thread add bt_completed int;
alter table thread add bt_info_hash binary(20);
alter table thread add bt_leechers int;
alter table thread add bt_seeders int;
alter table user add bt_downloaded bigint unsigned not null;
alter table user add bt_uploaded bigint unsigned not null;
insert ignore into attachmenttype (extension, mimetype, size) values ('torrent', 'a:1:{i:0;s:38:"content-type: application/x-bittorrent";}', 262144);

create table if not exists xbt_cache
(
	name varchar(255) not null,
	value text not null,
	primary key (name)
);

create table if not exists xbt_sub_files
(
	sfid int not null auto_increment,
	info_hash binary(20) not null,
	name varchar(255) not null,
	size bigint not null,
	primary key (sfid),
	key (info_hash)
);
