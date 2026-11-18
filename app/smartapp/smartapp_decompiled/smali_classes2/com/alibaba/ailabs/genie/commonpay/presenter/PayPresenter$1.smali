.class Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;
.super Ljava/lang/Object;
.source "PayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->onCreateOrderSuccess(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

.field final synthetic val$amount:J

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$merchantName:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$outItemId:Ljava/lang/String;

.field final synthetic val$outItemName:Ljava/lang/String;

.field final synthetic val$outOrderId:Ljava/lang/String;

.field final synthetic val$payUrl:Ljava/lang/String;

.field final synthetic val$sellerId:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$sellerId:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$outOrderId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$amount:J

    iput-object p8, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$orderId:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$outItemId:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$outItemName:Ljava/lang/String;

    iput-object p11, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$payUrl:Ljava/lang/String;

    iput-object p12, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$merchantName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$sellerId:J

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$appId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$outOrderId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$amount:J

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$orderId:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$outItemId:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$outItemName:Ljava/lang/String;

    iget-object v11, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$payUrl:Ljava/lang/String;

    iget-object v12, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;->val$merchantName:Ljava/lang/String;

    invoke-interface/range {v1 .. v12}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;->onCreateOrderSuccess(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
