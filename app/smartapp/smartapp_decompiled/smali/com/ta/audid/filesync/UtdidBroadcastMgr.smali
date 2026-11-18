.class public Lcom/ta/audid/filesync/UtdidBroadcastMgr;
.super Ljava/lang/Object;
.source "UtdidBroadcastMgr.java"


# static fields
.field private static mInstance:Lcom/ta/audid/filesync/UtdidBroadcastMgr;

.field private static mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/filesync/UtdidBroadcastMgr;
    .locals 2

    const-class v0, Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mInstance:Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    invoke-direct {v1}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;-><init>()V

    sput-object v1, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mInstance:Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    .line 33
    :cond_0
    sget-object v1, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mInstance:Lcom/ta/audid/filesync/UtdidBroadcastMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public sendBroadCast(Ljava/lang/String;)V
    .locals 4

    .line 58
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.action.utdid"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "utdid"

    .line 62
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ta/audid/Variables;->getAppkey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "appkey"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "appName"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/ta/audid/store/UtdidContentUtil;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {p1}, Lcom/ta/audid/utils/MD5Utils;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "sign"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public startBroadCastReceiver(Landroid/content/Context;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/ta/audid/filesync/UtdidBroadcastReceiver;

    invoke-direct {v0}, Lcom/ta/audid/filesync/UtdidBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.action.utdid"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public stopBroadCastReceiver(Landroid/content/Context;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 47
    sput-object p1, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
