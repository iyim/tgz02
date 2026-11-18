.class Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultLoginImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;


# direct methods
.method constructor <init>(Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$1;->this$0:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 130
    sget-object p2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onReceive]Login Broadcast Received. action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mtopsdk.DefaultLoginImpl"

    invoke-static {v0, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, -0x1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x46b7ae9a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const v1, -0x419b48d7

    if-eq v0, v1, :cond_3

    const v1, -0x20548589

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "NOTIFY_LOGIN_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "NOTIFY_LOGIN_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "NOTIFY_LOGIN_CANCEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x2

    :cond_5
    :goto_0
    if-eqz p2, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    goto :goto_1

    .line 142
    :cond_6
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance()Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->onLoginCancel()V

    goto :goto_1

    .line 139
    :cond_7
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance()Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->onLoginFail()V

    goto :goto_1

    .line 136
    :cond_8
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance()Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->onLoginSuccess()V

    :goto_1
    return-void
.end method
