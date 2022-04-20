package repository;

import java.util.List;

import bean.Campaign;
import bean.Wallet;

public interface WalletRepo {

	int updateWalletForClientCampaign(Wallet wallet);

	void updateDateOfWallet(int walletId);

	List<Wallet> viewAllWallet();

	void deleteWallet(Wallet wallet);

	List<Wallet> viewAllWalletForCampaign(Campaign c);

}
