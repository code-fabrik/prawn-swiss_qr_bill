# frozen_string_literal: true

module Prawn
  module SwissQRBill
    # Extend prawn with *swiss_qr_bill* methods
    module Extension
      def swiss_qr_bill(data)
        Prawn::SwissQRBill::Bill.new(self, data).draw
      end

      def swiss_qr_bill_sections
        canvas do
          Prawn::SwissQRBill::DebugSection.new(self).draw
        end
      end
    end
  end
end
