.class public Lcom/taobao/tao/remotebusiness/login/RemoteLogin;
.super Ljava/lang/Object;
.source "RemoteLogin.java"


# static fields
.field private static final DEFAULT_USERINFO:Ljava/lang/String; = "DEFAULT"

.field public static final TAG:Ljava/lang/String; = "mtopsdk.RemoteLogin"

.field private static mtopLoginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->mtopLoginMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getLogin()Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin(Lmtopsdk/mtop/intf/Mtop;)Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object v0

    return-object v0
.end method

.method public static getLogin(Lmtopsdk/mtop/intf/Mtop;)Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "INNER"

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    if-nez v1, :cond_4

    .line 36
    const-class v2, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;

    monitor-enter v2

    .line 37
    :try_start_0
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    if-nez v1, :cond_3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object p0

    iget-object p0, p0, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    .line 40
    :goto_1
    invoke-static {p0}, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->getDefaultLoginImpl(Landroid/content/Context;)Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 45
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    goto :goto_2

    :cond_2
    const-string p0, "mtopsdk.RemoteLogin"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [getLogin]loginImpl is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance p0, Lcom/taobao/tao/remotebusiness/login/LoginNotImplementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [getLogin] Login Not Implement!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/tao/remotebusiness/login/LoginNotImplementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static getLoginContext()Lcom/taobao/tao/remotebusiness/login/LoginContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 221
    invoke-static {v0, v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLoginContext(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginContext;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginContext(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginContext;
    .locals 1
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 158
    invoke-static {p0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin(Lmtopsdk/mtop/intf/Mtop;)Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object p0

    .line 160
    instance-of v0, p0, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;

    if-eqz v0, :cond_1

    const-string v0, "DEFAULT"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 162
    :cond_0
    nop

    nop

    invoke-virtual {p0, p1}, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;->getLoginContext(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginContext;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    invoke-interface {p0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->getLoginContext()Lcom/taobao/tao/remotebusiness/login/LoginContext;

    move-result-object p0

    return-object p0
.end method

.method public static isSessionValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-static {v0, v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->isSessionValid(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSessionValid(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    invoke-static {p0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin(Lmtopsdk/mtop/intf/Mtop;)Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object p0

    .line 139
    instance-of v0, p0, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p0

    check-cast v0, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "DEFAULT"

    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0, p1}, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;->isLogining(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->isLogining()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {v0, p1}, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;->isSessionValid(Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->isSessionValid()Z

    move-result p0

    :goto_2
    return p0
.end method

.method public static login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 6
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-static {p0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin(Lmtopsdk/mtop/intf/Mtop;)Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object v0

    if-nez p0, :cond_0

    const-string v1, "INNER"

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "DEFAULT"

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p1

    .line 78
    :goto_1
    invoke-static {v1, v2}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    instance-of v2, v0, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 82
    move-object v2, v0

    check-cast v2, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;

    goto :goto_2

    :cond_2
    move-object v2, v4

    .line 85
    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, p1

    :goto_3
    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {v2, v4}, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;->isLogining(Ljava/lang/String;)Z

    move-result v3

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->isLogining()Z

    move-result v3

    :goto_4
    const-string v5, "mtopsdk.RemoteLogin"

    if-eqz v3, :cond_6

    .line 89
    sget-object p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [login] loginsdk is logining"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 96
    :cond_6
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [login]call login"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 100
    instance-of v1, v0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    if-eqz v1, :cond_8

    .line 101
    move-object v1, v0

    nop

    nop

    invoke-virtual {v1, p3}, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->setSessionInvalid(Ljava/lang/Object;)V

    .line 104
    :cond_8
    invoke-static {p0, p1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object p0

    if-eqz v2, :cond_9

    .line 106
    invoke-virtual {v2, v4, p0, p2}, Lcom/taobao/tao/remotebusiness/login/MultiAccountRemoteLogin;->login(Ljava/lang/String;Lcom/taobao/tao/remotebusiness/login/onLoginListener;Z)V

    goto :goto_5

    .line 108
    :cond_9
    invoke-interface {v0, p0, p2}, Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;->login(Lcom/taobao/tao/remotebusiness/login/onLoginListener;Z)V

    :goto_5
    const p1, 0xde700

    const-wide/16 p2, 0x4e20

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static login(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-static {v0, v0, p0, v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static login(ZLjava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 203
    invoke-static {v0, v0, p0, p1}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLoginImpl(Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-static {v0, p0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->setLoginImpl(Lmtopsdk/mtop/intf/Mtop;Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLoginImpl(Lmtopsdk/mtop/intf/Mtop;Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;)V
    .locals 1
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    const-string p0, "INNER"

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 60
    :goto_0
    sget-object v0, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " [setLoginImpl] set loginImpl="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mtopsdk.RemoteLogin"

    invoke-static {p1, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setSessionInvalid(Lmtopsdk/mtop/intf/Mtop;Landroid/os/Bundle;)V
    .locals 2
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-static {p0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLogin(Lmtopsdk/mtop/intf/Mtop;)Lcom/taobao/tao/remotebusiness/login/IRemoteLogin;

    move-result-object v0

    .line 120
    instance-of v1, v0, Lcom/taobao/tao/remotebusiness/login/IRemoteLoginAdapter;

    if-eqz v1, :cond_2

    .line 121
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    const-string p0, "INNER"

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 123
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " [setSessionInvalid] bundle="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mtopsdk.RemoteLogin"

    invoke-static {v1, p0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    check-cast v0, Lcom/taobao/tao/remotebusiness/login/IRemoteLoginAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/tao/remotebusiness/login/IRemoteLoginAdapter;->setSessionInvalid(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
