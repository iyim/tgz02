.class public Lcom/alipay/android/app/render/birdnest/provider/CashierIdProvider;
.super Ljava/lang/Object;
.source "CashierIdProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierIdProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-void
.end method


# virtual methods
.method public getUniqueResId(Ljava/lang/String;)I
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getStringId(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
