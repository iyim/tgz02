.class Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;
.super Ljava/lang/Object;
.source "PayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->onQueryOrderSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$failMsg:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$orderStatus:I

.field final synthetic val$outItemId:Ljava/lang/String;

.field final synthetic val$outItemName:Ljava/lang/String;

.field final synthetic val$outOrderId:Ljava/lang/String;

.field final synthetic val$sellerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$sellerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$outOrderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$orderId:Ljava/lang/String;

    iput p6, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$orderStatus:I

    iput-object p7, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$outItemId:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$outItemName:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$failMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$sellerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$outOrderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$orderId:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$orderStatus:I

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$outItemId:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$outItemName:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;->val$failMsg:Ljava/lang/String;

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;->onQueryOrderSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
