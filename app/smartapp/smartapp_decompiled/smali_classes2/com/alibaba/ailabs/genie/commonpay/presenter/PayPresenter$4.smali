.class Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;
.super Ljava/lang/Object;
.source "PayPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

.field final synthetic val$retCode:Ljava/lang/String;

.field final synthetic val$retMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;->val$retCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;->val$retMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;->this$0:Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;->val$retCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;->val$retMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;->onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
