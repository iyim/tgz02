.class public Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "AccsListner.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CallbackListener"

.field private static gGlobalRounterComponent:Lcom/alibaba/wireless/security/framework/IRouterComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    return-void
.end method

.method private getRouterComponent()Lcom/alibaba/wireless/security/framework/IRouterComponent;
    .locals 2

    .line 95
    sget-object v0, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;->gGlobalRounterComponent:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    if-nez v0, :cond_1

    .line 96
    const-class v0, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;->gGlobalRounterComponent:Lcom/alibaba/wireless/security/framework/IRouterComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 99
    :try_start_1
    sget-object v1, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsAdapter;->gContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSGPluginManager()Lcom/alibaba/wireless/security/framework/ISGPluginManager;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/alibaba/wireless/security/framework/ISGPluginManager;->getRouter()Lcom/alibaba/wireless/security/framework/IRouterComponent;

    move-result-object v1

    sput-object v1, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;->gGlobalRounterComponent:Lcom/alibaba/wireless/security/framework/IRouterComponent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;->gGlobalRounterComponent:Lcom/alibaba/wireless/security/framework/IRouterComponent;

    return-object v0
.end method


# virtual methods
.method public onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 0

    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 48
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>([B)V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/wireless/security/open/securityguardaccsadapter/AccsListner;->getRouterComponent()Lcom/alibaba/wireless/security/framework/IRouterComponent;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "CallbackListener"

    const-string p4, "Call Do Command"

    .line 51
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x2b90

    const/4 p4, 0x1

    .line 52
    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    invoke-interface {p2, p3, p4}, Lcom/alibaba/wireless/security/framework/IRouterComponent;->doCommand(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    return-void
.end method
