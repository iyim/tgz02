.class public Lcom/alipay/mobile/verifyidentity/prod/manager/callback/result/ProdManagerResult;
.super Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;
.source "ProdManagerResult.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
