package org.powertac.common.commands;

import com.sun.corba.se.pept.broker.Broker;
import org.joda.time.LocalDateTime;

import java.math.BigDecimal;

/**
 * Created by IntelliJ IDEA.
 * User: ddauer
 * Date: 12/1/10
 * Time: 2:15 PM
 * To change this template use File | Settings | File Templates.
 */
public class CashPositionCommand {
    Broker broker;
    Long transactionId;
    BigDecimal moneyChange;
    BigDecimal balance;
    String reason;
    String origin;
    LocalDateTime dateCreated;
}
