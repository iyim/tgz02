.class public Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;
.super Ljava/lang/Object;
.source "VerifyBehavor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->g:Ljava/util/Map;

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->h:I

    const-string v0, "VerifyIdentity"

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->i:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getLoggerLevel()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->h:I

    return v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedID()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCaseID()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public removeExtParam(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->b:Ljava/lang/String;

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->i:Ljava/lang/String;

    return-void
.end method

.method public setLoggerLevel(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->h:I

    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->d:Ljava/lang/String;

    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->e:Ljava/lang/String;

    return-void
.end method

.method public setParam3(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->f:Ljava/lang/String;

    return-void
.end method

.method public setSeedID(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->c:Ljava/lang/String;

    return-void
.end method

.method public setUserCaseID(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavor;->a:Ljava/lang/String;

    return-void
.end method
