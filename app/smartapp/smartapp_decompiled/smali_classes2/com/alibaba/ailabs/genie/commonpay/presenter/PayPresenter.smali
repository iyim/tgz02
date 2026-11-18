.class public Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;
.super Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;
.source "PayPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter<",
        "Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;",
        ">;",
        "Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PayPresenter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createOrder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;-><init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;)V

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->createOrder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$2;-><init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreateOrderSuccess(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$4;-><init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onQueryOrderSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter$3;-><init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public queryPaymentStatus(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;-><init>(Lcom/alibaba/ailabs/genie/commonpay/presenter/PayCallback;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/commonpay/model/QrcodeModel;->queryPaymentStatus(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
