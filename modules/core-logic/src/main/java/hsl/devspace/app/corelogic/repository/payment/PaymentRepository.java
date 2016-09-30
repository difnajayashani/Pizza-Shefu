package hsl.devspace.app.corelogic.repository.payment;

import hsl.devspace.app.corelogic.domain.Payment;

/**
 * Created by hsenid on 9/21/16.
 */
public interface PaymentRepository {
    int add(Payment payment);
    int addPaymentMethod(String paymentMethod);
}
