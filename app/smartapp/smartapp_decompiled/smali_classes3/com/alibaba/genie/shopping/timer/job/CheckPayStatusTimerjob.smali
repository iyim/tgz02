.class public Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;
.super Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;
.source "CheckPayStatusTimerjob.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;
    }
.end annotation


# static fields
.field public static _instance:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob; = null

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mOrderCode:Ljava/lang/String;

.field private mPayOrderCode:Ljava/lang/String;

.field private mPayStatusCallback:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mAuthInfo:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mOrderCode:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mPayOrderCode:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mPayStatusCallback:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;

    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;)Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;
    .locals 2

    const-class v0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->_instance:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;)V

    sput-object v1, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->_instance:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;

    .line 41
    :cond_0
    sget-object p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->_instance:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getPeriod()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const p2, 0x186a6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->cancel()V

    .line 80
    iget-object p1, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mPayStatusCallback:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 81
    invoke-interface {p1, p2}, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;->onPayStatus(Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    const p3, 0x186a6

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    move-result-object p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pay status="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "jesonma"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p2, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mPayStatusCallback:Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;

    if-eqz p2, :cond_1

    .line 67
    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob$PayStatusCallback;->onPayStatus(Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public work()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mAuthInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mOrderCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/timer/job/CheckPayStatusTimerjob;->mPayOrderCode:Ljava/lang/String;

    const v3, 0x186a6

    invoke-static {v0, v1, v2, p0, v3}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->queryPaymentStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method
