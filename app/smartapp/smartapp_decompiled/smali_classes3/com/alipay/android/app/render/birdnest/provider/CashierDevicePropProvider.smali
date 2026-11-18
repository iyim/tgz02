.class public Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;
.super Ljava/lang/Object;
.source "CashierDevicePropProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-void
.end method


# virtual methods
.method public capableOf(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "platformVersion"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "clientVersion"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "clientChannel"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "debug"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p2, "platformVersion"

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p2, "clientVersion"

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "clientChannel"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    const-string p2, "debug"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "false"

    return-object p1

    :cond_3
    const-string p2, "getClientInfo"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-static {p1}, Lcom/alipay/android/app/render/birdnest/utils/ClientInfo;->buildClientInfo(Lcom/alipay/android/app/render/api/ICashierProvider;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
