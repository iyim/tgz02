.class Lanet/channel/SessionCenter$1;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Lanet/channel/strategy/dispatch/IAmdcSign;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/SessionCenter;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$iSecurity:Lanet/channel/security/ISecurity;


# direct methods
.method constructor <init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lanet/channel/security/ISecurity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lanet/channel/SessionCenter$1;->this$0:Lanet/channel/SessionCenter;

    iput-object p2, p0, Lanet/channel/SessionCenter$1;->val$appkey:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/SessionCenter$1;->val$iSecurity:Lanet/channel/security/ISecurity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lanet/channel/SessionCenter$1;->val$appkey:Ljava/lang/String;

    return-object v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 148
    iget-object v0, p0, Lanet/channel/SessionCenter$1;->val$iSecurity:Lanet/channel/security/ISecurity;

    iget-object v1, p0, Lanet/channel/SessionCenter$1;->this$0:Lanet/channel/SessionCenter;

    iget-object v1, v1, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lanet/channel/SessionCenter$1;->getAppkey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HMAC_SHA1"

    invoke-interface {v0, v1, v3, v2, p1}, Lanet/channel/security/ISecurity;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public useSecurityGuard()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lanet/channel/SessionCenter$1;->val$iSecurity:Lanet/channel/security/ISecurity;

    invoke-interface {v0}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
