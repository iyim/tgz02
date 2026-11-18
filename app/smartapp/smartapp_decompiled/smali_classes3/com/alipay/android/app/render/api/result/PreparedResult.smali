.class public Lcom/alipay/android/app/render/api/result/PreparedResult;
.super Ljava/lang/Object;
.source "PreparedResult.java"


# instance fields
.field public mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback2;

.field public mResult:Ljava/lang/Object;

.field public mTplContent:Ljava/lang/String;

.field public mTplId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/android/app/render/api/result/PreparedResult;->mResult:Ljava/lang/Object;

    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 1

    .line 20
    new-instance v0, Lcom/alipay/android/app/render/api/result/PreparedResult;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/render/api/result/PreparedResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public renderCallback(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback2;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alipay/android/app/render/api/result/PreparedResult;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback2;

    return-object p0
.end method

.method public templateContent(Ljava/lang/String;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alipay/android/app/render/api/result/PreparedResult;->mTplContent:Ljava/lang/String;

    return-object p0
.end method

.method public templateId(Ljava/lang/String;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/render/api/result/PreparedResult;->mTplId:Ljava/lang/String;

    return-object p0
.end method
