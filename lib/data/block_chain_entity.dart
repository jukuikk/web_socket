import 'package:web_socket/generated/json/base/json_convert_content.dart';

class BlockChainEntity with JsonConvert<BlockChainEntity> {
	String op;
	BlockChainX x;
}

class BlockChainX with JsonConvert<BlockChainX> {
	List<int> txIndexes;
	int nTx;
	int totalBTCSent;
	int estimatedBTCSent;
	int reward;
	int size;
	int blockIndex;
	int prevBlockIndex;
	int height;
	String hash;
	String mrklRoot;
	int version;
	int time;
	int bits;
	int nonce;
}
