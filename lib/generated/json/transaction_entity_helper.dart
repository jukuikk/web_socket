import 'package:web_socket/data/transaction_entity.dart';

transactionEntityFromJson(TransactionEntity data, Map<String, dynamic> json) {
	if (json['op'] != null) {
		data.op = json['op']?.toString();
	}
	if (json['x'] != null) {
		data.x = new TransactionX().fromJson(json['x']);
	}
	return data;
}

Map<String, dynamic> transactionEntityToJson(TransactionEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['op'] = entity.op;
	if (entity.x != null) {
		data['x'] = entity.x.toJson();
	}
	return data;
}

transactionXFromJson(TransactionX data, Map<String, dynamic> json) {
	if (json['lock_time'] != null) {
		data.lockTime = json['lock_time']?.toInt();
	}
	if (json['ver'] != null) {
		data.ver = json['ver']?.toInt();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	if (json['inputs'] != null) {
		data.inputs = new List<TransactionXInput>();
		(json['inputs'] as List).forEach((v) {
			data.inputs.add(new TransactionXInput().fromJson(v));
		});
	}
	if (json['time'] != null) {
		data.time = json['time']?.toInt();
	}
	if (json['tx_index'] != null) {
		data.txIndex = json['tx_index']?.toInt();
	}
	if (json['vin_sz'] != null) {
		data.vinSz = json['vin_sz']?.toInt();
	}
	if (json['hash'] != null) {
		data.hash = json['hash']?.toString();
	}
	if (json['vout_sz'] != null) {
		data.voutSz = json['vout_sz']?.toInt();
	}
	if (json['relayed_by'] != null) {
		data.relayedBy = json['relayed_by']?.toString();
	}
	if (json['out'] != null) {
		data.out = new List<TransactionXOut>();
		(json['out'] as List).forEach((v) {
			data.out.add(new TransactionXOut().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> transactionXToJson(TransactionX entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['lock_time'] = entity.lockTime;
	data['ver'] = entity.ver;
	data['size'] = entity.size;
	if (entity.inputs != null) {
		data['inputs'] =  entity.inputs.map((v) => v.toJson()).toList();
	}
	data['time'] = entity.time;
	data['tx_index'] = entity.txIndex;
	data['vin_sz'] = entity.vinSz;
	data['hash'] = entity.hash;
	data['vout_sz'] = entity.voutSz;
	data['relayed_by'] = entity.relayedBy;
	if (entity.out != null) {
		data['out'] =  entity.out.map((v) => v.toJson()).toList();
	}
	return data;
}

transactionXInputFromJson(TransactionXInput data, Map<String, dynamic> json) {
	if (json['sequence'] != null) {
		data.sequence = json['sequence']?.toInt();
	}
	if (json['prev_out'] != null) {
		data.prevOut = new TransactionXInputsPrevOut().fromJson(json['prev_out']);
	}
	if (json['script'] != null) {
		data.script = json['script']?.toString();
	}
	return data;
}

Map<String, dynamic> transactionXInputToJson(TransactionXInput entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sequence'] = entity.sequence;
	if (entity.prevOut != null) {
		data['prev_out'] = entity.prevOut.toJson();
	}
	data['script'] = entity.script;
	return data;
}

transactionXInputsPrevOutFromJson(TransactionXInputsPrevOut data, Map<String, dynamic> json) {
	if (json['spent'] != null) {
		data.spent = json['spent'];
	}
	if (json['tx_index'] != null) {
		data.txIndex = json['tx_index']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['addr'] != null) {
		data.addr = json['addr']?.toString();
	}
	if (json['value'] != null) {
		data.value = json['value']?.toInt();
	}
	if (json['n'] != null) {
		data.n = json['n']?.toInt();
	}
	if (json['script'] != null) {
		data.script = json['script']?.toString();
	}
	return data;
}

Map<String, dynamic> transactionXInputsPrevOutToJson(TransactionXInputsPrevOut entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['spent'] = entity.spent;
	data['tx_index'] = entity.txIndex;
	data['type'] = entity.type;
	data['addr'] = entity.addr;
	data['value'] = entity.value;
	data['n'] = entity.n;
	data['script'] = entity.script;
	return data;
}

transactionXOutFromJson(TransactionXOut data, Map<String, dynamic> json) {
	if (json['spent'] != null) {
		data.spent = json['spent'];
	}
	if (json['tx_index'] != null) {
		data.txIndex = json['tx_index']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['addr'] != null) {
		data.addr = json['addr']?.toString();
	}
	if (json['value'] != null) {
		data.value = json['value']?.toInt();
	}
	if (json['n'] != null) {
		data.n = json['n']?.toInt();
	}
	if (json['script'] != null) {
		data.script = json['script']?.toString();
	}
	return data;
}

Map<String, dynamic> transactionXOutToJson(TransactionXOut entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['spent'] = entity.spent;
	data['tx_index'] = entity.txIndex;
	data['type'] = entity.type;
	data['addr'] = entity.addr;
	data['value'] = entity.value;
	data['n'] = entity.n;
	data['script'] = entity.script;
	return data;
}