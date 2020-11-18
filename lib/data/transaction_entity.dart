import 'package:web_socket/generated/json/base/json_convert_content.dart';
import 'package:web_socket/generated/json/base/json_field.dart';

class TransactionEntity with JsonConvert<TransactionEntity> {
	String op;
	TransactionX x;
}

class TransactionX with JsonConvert<TransactionX> {
	@JSONField(name: "lock_time")
	int lockTime;
	int ver;
	int size;
	List<TransactionXInput> inputs;
	int time;
	@JSONField(name: "tx_index")
	int txIndex;
	@JSONField(name: "vin_sz")
	int vinSz;
	String hash;
	@JSONField(name: "vout_sz")
	int voutSz;
	@JSONField(name: "relayed_by")
	String relayedBy;
	List<TransactionXOut> out;
}

class TransactionXInput with JsonConvert<TransactionXInput> {
	int sequence;
	@JSONField(name: "prev_out")
	TransactionXInputsPrevOut prevOut;
	String script;
}

class TransactionXInputsPrevOut with JsonConvert<TransactionXInputsPrevOut> {
	bool spent;
	@JSONField(name: "tx_index")
	int txIndex;
	int type;
	String addr;
	int value;
	int n;
	String script;
}

class TransactionXOut with JsonConvert<TransactionXOut> {
	bool spent;
	@JSONField(name: "tx_index")
	int txIndex;
	int type;
	String addr;
	int value;
	int n;
	String script;
}
