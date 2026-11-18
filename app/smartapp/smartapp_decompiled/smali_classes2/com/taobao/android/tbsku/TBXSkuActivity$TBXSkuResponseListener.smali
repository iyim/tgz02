.class Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;
.super Ljava/lang/Object;
.source "TBXSkuActivity.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/TBXSkuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TBXSkuResponseListener"
.end annotation


# instance fields
.field private mInit:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/tbsku/TBXSkuActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity;Landroid/os/Handler;Z)V
    .locals 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 432
    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mMainHandler:Landroid/os/Handler;

    .line 433
    iput-boolean p3, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mInit:Z

    return-void
.end method

.method static synthetic access$1100(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->dealResultInMainThread(Lcom/alibaba/fastjson/JSONObject;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1600(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private dealResultInMainThread(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;

    invoke-direct {v1, p0, p1}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected dealMtopError(Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 5

    .line 472
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object p2

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u6570\u636e\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    const/4 v0, 0x1

    .line 476
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 478
    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$1200(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$1300(Lcom/taobao/android/tbsku/TBXSkuActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "taobao_sku"

    const-string v4, "UME_SKU_URL_002"

    invoke-static {v3, v4, p2, v0, v2}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarmUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 479
    invoke-static {p1, p2, v1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$800(Lcom/taobao/android/tbsku/TBXSkuActivity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 481
    :cond_1
    invoke-static {p1, v1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$1400(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V

    :goto_0
    return-void
.end method

.method protected dealMtopSuccess(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mInit:Z

    if-eqz v0, :cond_0

    .line 487
    invoke-static {p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$1500(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$1400(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    .line 465
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/tbsku/TBXSkuActivity;

    if-eqz p1, :cond_0

    .line 466
    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->dealMtopError(Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)V

    :cond_0
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 0

    .line 446
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/tbsku/TBXSkuActivity;

    if-eqz p1, :cond_2

    .line 447
    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object p3, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mMainHandler:Landroid/os/Handler;

    if-nez p3, :cond_1

    return-void

    .line 453
    :cond_1
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;-><init>(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 460
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/tbsku/TBXSkuActivity;

    if-eqz p1, :cond_0

    .line 439
    invoke-static {p1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->dealMtopError(Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)V

    :cond_0
    return-void
.end method
