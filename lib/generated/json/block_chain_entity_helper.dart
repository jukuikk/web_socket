import 'package:web_socket/data/block_chain_entity.dart';

blockChainEntityFromJson(BlockChainEntity data, Map<String, dynamic> json) {
	if (json['op'] != null) {
		data.op = json['op']?.toString();
	}
	if (json['x'] != null) {
		data.x = new BlockChainX().fromJson(json['x']);
	}
	return data;
}

Map<String, dynamic> blockChainEntityToJson(BlockChainEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['op'] = entity.op;
	if (entity.x != null) {
		data['x'] = entity.x.toJson();
	}
	return data;
}

blockChainXFromJson(BlockChainX data, Map<String, dynamic> json) {
	if (json['txIndexes'] != null) {
		data.txIndexes = json['txIndexes']?.map((v) => v?.toInt())?.toList()?.cast<int>();
	}
	if (json['nTx'] != null) {
		data.nTx = json['nTx']?.toInt();
	}
	if (json['totalBTCSent'] != null) {
		data.totalBTCSent = json['totalBTCSent']?.toInt();
	}
	if (json['estimatedBTCSent'] != null) {
		data.estimatedBTCSent = json['estimatedBTCSent']?.toInt();
	}
	if (json['reward'] != null) {
		data.reward = json['reward']?.toInt();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	if (json['blockIndex'] != null) {
		data.blockIndex = json['blockIndex']?.toInt();
	}
	if (json['prevBlockIndex'] != null) {
		data.prevBlockIndex = json['prevBlockIndex']?.toInt();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['hash'] != null) {
		data.hash = json['hash']?.toString();
	}
	if (json['mrklRoot'] != null) {
		data.mrklRoot = json['mrklRoot']?.toString();
	}
	if (json['version'] != null) {
		data.version = json['version']?.toInt();
	}
	if (json['time'] != null) {
		data.time = json['time']?.toInt();
	}
	if (json['bits'] != null) {
		data.bits = json['bits']?.toInt();
	}
	if (json['nonce'] != null) {
		data.nonce = json['nonce']?.toInt();
	}
	return data;
}

Map<String, dynamic> blockChainXToJson(BlockChainX entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['txIndexes'] = entity.txIndexes;
	data['nTx'] = entity.nTx;
	data['totalBTCSent'] = entity.totalBTCSent;
	data['estimatedBTCSent'] = entity.estimatedBTCSent;
	data['reward'] = entity.reward;
	data['size'] = entity.size;
	data['blockIndex'] = entity.blockIndex;
	data['prevBlockIndex'] = entity.prevBlockIndex;
	data['height'] = entity.height;
	data['hash'] = entity.hash;
	data['mrklRoot'] = entity.mrklRoot;
	data['version'] = entity.version;
	data['time'] = entity.time;
	data['bits'] = entity.bits;
	data['nonce'] = entity.nonce;
	return data;
}