class TransactionsController < ApplicationController
  def index
      @transactions = Transaction.where(user_id: current_user)
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    # authorize @transaction
    @transaction.save!
    redirect_to transactions_path
  end

  def new
    @transaction = Transaction.new
    # authorize @transaction
  end

  def show
    @transaction = Transaction.find(params[:id])
    # authorize @transaction
  end

  private

  def transaction_params
    params.require(:transaction).permit(:price_cents, :user_id, :portal_id)
  end
end
