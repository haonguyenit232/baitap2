class Notifier < ApplicationMailer
    default :from => "HaoHao <nvhao232@gmail.com>"

    def order_received(order)
        @order = order

        mail :to => @order.email, :subject => "We've received your order"
    end
end
