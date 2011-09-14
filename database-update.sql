ALTER TABLE users ADD can_modify_passwd TINYINT NOT NULL DEFAULT 1;
ALTER TABLE  `storage` ADD UNIQUE  `index_unique` (  `device_id` ,  `storage_mib` ,  `storage_index` );
ALTER TABLE  `bgpPeers_cbgp` ADD  `AcceptedPrefixes` INT NOT NULL ,ADD  `DeniedPrefixes` INT NOT NULL ,ADD  `PrefixAdminLimit` INT NOT NULL ,ADD  `PrefixThreshold` INT NOT NULL ,ADD  `PrefixClearThreshold` INT NOT NULL ,ADD  `AdvertisedPrefixes` INT NOT NULL ,ADD  `SuppressedPrefixes` INT NOT NULL ,ADD  `WithdrawnPrefixes` INT NOT NULL;
ALTER TABLE  `bgpPeers_cbgp` ADD UNIQUE  `unique_index` (  `device_id` ,  `bgpPeerIdentifier` ,  `afi` ,  `safi` );
ALTER TABLE  `ports` ADD UNIQUE  `device_ifIndex` (  `device_id` ,  `ifIndex` );
ALTER TABLE  `devices` CHANGE  `port`  `port` SMALLINT( 5 ) UNSIGNED NOT NULL DEFAULT  '161';
CREATE TABLE IF NOT EXISTS `ipsec_tunnels` (  `tunnel_id` int(11) NOT NULL AUTO_INCREMENT,  `device_id` int(11) NOT NULL,  `peer_port` int(11) NOT NULL,  `peer_addr` varchar(64) COLLATE utf8_unicode_ci NOT NULL,  `local_addr` varchar(64) COLLATE utf8_unicode_ci NOT NULL,  `local_port` int(11) NOT NULL,  `tunnel_name` varchar(96) COLLATE utf8_unicode_ci NOT NULL,  `tunnel_status` varchar(11) COLLATE utf8_unicode_ci NOT NULL,  PRIMARY KEY (`tunnel_id`),  UNIQUE KEY `unique_index` (`device_id`,`peer_addr`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

