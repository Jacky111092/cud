package repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import bean.Campaign;
import bean.Wallet;

public class WalletRepoImpl implements WalletRepo{
	@PersistenceContext(unitName="myDev")
	private EntityManager entityManager;
	@Transactional
	@Override
	public int updateWalletForClientCampaign(Wallet wallet) {
		// TODO Auto-generated method stub
		entityManager.persist(wallet);
		 entityManager.flush();
		 return wallet.getWalletId();
	}
	@Transactional
	@Override
	public void updateDateOfWallet(int walletId) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Wallet c set  c.created_date = Sysdate"
				+" where c.walletId = :walletId");
		query.setParameter("walletId", walletId);

		
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public List<Wallet> viewAllWallet() {
		// TODO Auto-generated method stub
		try {
		List<Wallet> walletList = entityManager.createQuery("SELECT s FROM Wallet s where s.record_status='A'").getResultList();
		return walletList;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}
	@Transactional
	@Override
	public void deleteWallet(Wallet wallet) {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("update Wallet c set  c.record_status = 'D'"
				+ "where c.walletId = :walletId");
		query.setParameter("walletId", wallet.getWalletId());
		
		int rowsupdated = query.executeUpdate();
	}
	@Override
	public List<Wallet> viewAllWalletForCampaign(Campaign c) {
		// TODO Auto-generated method stub
		try {
		System.out.println("Camaign inside wallet  "+c.getCampaignId());
		Query query = entityManager.createQuery("SELECT s FROM Wallet s where s.campaign = :campaign and  s.record_status='A'");
		query.setParameter("campaign", c);
		List<Wallet> wallet = query.getResultList();
		for(Wallet w : wallet)
		{
			System.out.println("Wallet inside client "+w.getPaid_amount());
		}
		return wallet;
		}
		catch(NoResultException nre)
		{
			return null;
		}
	}

}
