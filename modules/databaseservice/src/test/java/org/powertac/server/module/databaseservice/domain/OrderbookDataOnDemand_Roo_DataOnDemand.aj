// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.powertac.server.module.databaseservice.domain;

import java.util.List;
import java.util.Random;
import org.powertac.server.module.databaseservice.domain.Orderbook;
import org.springframework.stereotype.Component;

privileged aspect OrderbookDataOnDemand_Roo_DataOnDemand {
    
    declare @type: OrderbookDataOnDemand: @Component;
    
    private Random OrderbookDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Orderbook> OrderbookDataOnDemand.data;
    
    public Orderbook OrderbookDataOnDemand.getNewTransientOrderbook(int index) {
        org.powertac.server.module.databaseservice.domain.Orderbook obj = new org.powertac.server.module.databaseservice.domain.Orderbook();
        obj.setAsk1(new java.math.BigDecimal(index));
        obj.setAsk10(new java.math.BigDecimal(index));
        obj.setAsk2(new java.math.BigDecimal(index));
        obj.setAsk3(new java.math.BigDecimal(index));
        obj.setAsk4(new java.math.BigDecimal(index));
        obj.setAsk5(new java.math.BigDecimal(index));
        obj.setAsk6(new java.math.BigDecimal(index));
        obj.setAsk7(new java.math.BigDecimal(index));
        obj.setAsk8(new java.math.BigDecimal(index));
        obj.setAsk9(new java.math.BigDecimal(index));
        obj.setAskSize1(new java.math.BigDecimal(index));
        obj.setAskSize10(new java.math.BigDecimal(index));
        obj.setAskSize2(new java.math.BigDecimal(index));
        obj.setAskSize3(new java.math.BigDecimal(index));
        obj.setAskSize4(new java.math.BigDecimal(index));
        obj.setAskSize5(new java.math.BigDecimal(index));
        obj.setAskSize6(new java.math.BigDecimal(index));
        obj.setAskSize7(new java.math.BigDecimal(index));
        obj.setAskSize8(new java.math.BigDecimal(index));
        obj.setAskSize9(new java.math.BigDecimal(index));
        obj.setBid1(new java.math.BigDecimal(index));
        obj.setBid10(new java.math.BigDecimal(index));
        obj.setBid2(new java.math.BigDecimal(index));
        obj.setBid3(new java.math.BigDecimal(index));
        obj.setBid4(new java.math.BigDecimal(index));
        obj.setBid5(new java.math.BigDecimal(index));
        obj.setBid6(new java.math.BigDecimal(index));
        obj.setBid7(new java.math.BigDecimal(index));
        obj.setBid8(new java.math.BigDecimal(index));
        obj.setBid9(new java.math.BigDecimal(index));
        obj.setBidSize1(new java.math.BigDecimal(index));
        obj.setBidSize10(new java.math.BigDecimal(index));
        obj.setBidSize2(new java.math.BigDecimal(index));
        obj.setBidSize3(new java.math.BigDecimal(index));
        obj.setBidSize4(new java.math.BigDecimal(index));
        obj.setBidSize5(new java.math.BigDecimal(index));
        obj.setBidSize6(new java.math.BigDecimal(index));
        obj.setBidSize7(new java.math.BigDecimal(index));
        obj.setBidSize8(new java.math.BigDecimal(index));
        obj.setBidSize9(new java.math.BigDecimal(index));
        obj.setCompetition(null);
        obj.setDateExecuted(null);
        obj.setProduct(null);
        obj.setTimeslot(null);
        obj.setTransactionID(new Integer(index).longValue());
        return obj;
    }
    
    public Orderbook OrderbookDataOnDemand.getSpecificOrderbook(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Orderbook obj = data.get(index);
        return Orderbook.findOrderbook(obj.getId());
    }
    
    public Orderbook OrderbookDataOnDemand.getRandomOrderbook() {
        init();
        Orderbook obj = data.get(rnd.nextInt(data.size()));
        return Orderbook.findOrderbook(obj.getId());
    }
    
    public boolean OrderbookDataOnDemand.modifyOrderbook(Orderbook obj) {
        return false;
    }
    
    public void OrderbookDataOnDemand.init() {
        data = org.powertac.server.module.databaseservice.domain.Orderbook.findOrderbookEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Orderbook' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<org.powertac.server.module.databaseservice.domain.Orderbook>();
        for (int i = 0; i < 10; i++) {
            org.powertac.server.module.databaseservice.domain.Orderbook obj = getNewTransientOrderbook(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
