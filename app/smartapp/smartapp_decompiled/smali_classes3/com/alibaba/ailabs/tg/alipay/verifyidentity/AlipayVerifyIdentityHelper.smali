.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;
.super Ljava/lang/Object;
.source "AlipayVerifyIdentityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;,
        Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;
    }
.end annotation


# static fields
.field private static final RESULT_CODE_SUCCESS:Ljava/lang/String; = "1000"

.field private static volatile isInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->initAlipayVerifyIdentitySdk(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static init(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->setAppDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V

    return-void
.end method

.method private static initAlipayVerifyIdentitySdk(Landroid/content/Context;)V
    .locals 2

    .line 35
    sget-boolean v0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->isInit:Z

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-boolean v1, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->isInit:Z

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->init(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 39
    sput-boolean p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper;->isInit:Z

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static startVerify(Landroid/content/Context;Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 280
    new-instance v0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyIdentityResultCallback;I)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/AlipayVerifyIdentityHelper$AlipayVerifyTask;->start()V

    return-void
.end method
