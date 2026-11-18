.class public Lcom/aligenie/ags/analytics/service/ICService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/analytics/service/ICService$e;
    }
.end annotation


# static fields
.field public static l:Lc/b/a/b/d;

.field public static m:Landroid/net/Uri;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/aligenie/ags/analytics/service/ICService$e;

.field public d:Landroid/os/Handler;

.field public e:Landroid/os/Handler;

.field public f:Landroid/net/Uri;

.field public g:Landroid/net/Uri;

.field public final h:Landroid/database/ContentObserver;

.field public final i:Landroid/database/ContentObserver;

.field public final j:Landroid/database/ContentObserver;

.field public final k:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aligenie/ags/analytics/service/ICService;->m:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->f:Landroid/net/Uri;

    const-string v0, "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->g:Landroid/net/Uri;

    new-instance v0, Lcom/aligenie/ags/analytics/service/ICService$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/aligenie/ags/analytics/service/ICService$a;-><init>(Lcom/aligenie/ags/analytics/service/ICService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->h:Landroid/database/ContentObserver;

    new-instance v0, Lcom/aligenie/ags/analytics/service/ICService$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/aligenie/ags/analytics/service/ICService$b;-><init>(Lcom/aligenie/ags/analytics/service/ICService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->i:Landroid/database/ContentObserver;

    new-instance v0, Lcom/aligenie/ags/analytics/service/ICService$c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/aligenie/ags/analytics/service/ICService$c;-><init>(Lcom/aligenie/ags/analytics/service/ICService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->j:Landroid/database/ContentObserver;

    new-instance v0, Lcom/aligenie/ags/analytics/service/ICService$d;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/aligenie/ags/analytics/service/ICService$d;-><init>(Lcom/aligenie/ags/analytics/service/ICService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->k:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7114bf7f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x70506e33

    if-eq v0, v1, :cond_1

    const v1, -0x3b5366d2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "paused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "stopped"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "started"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    return-object p1

    :cond_4
    const-string p1, "pause"

    return-object p1

    :cond_5
    const-string p1, "finish"

    return-object p1

    :cond_6
    const-string p1, "start"

    return-object p1
.end method

.method public a()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.ALI_BUTTON_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "intent.action.IC_COLLECT_ENGINE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;

    invoke-direct {v2}, Lcom/aligenie/ags/analytics/ICBroadcastReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc/b/a/b/f;

    invoke-direct {v2}, Lc/b/a/b/f;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "android.permission.DUMP"

    const-string p3, "IC"

    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "aligenie ic dump todo."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 8

    const-string v0, "IC"

    const-string v1, "aligenie_ic"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1
    sput-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lc/b/a/b/o/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IC version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lc/b/a/b/o/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "GetValueNull"

    sput-object v5, Lc/b/a/b/o/d;->a:Ljava/lang/String;

    const-class v5, Lc/b/a/b/o/d;

    const-string v6, "can\'t found package"

    invoke-static {v6, v5, v4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    sget-object v4, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const-string v5, "audio"

    .line 5
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    sput v4, Lc/b/a/b/o/g;->i:I

    .line 6
    sget-object v4, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    const-string v6, "power"

    .line 7
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    sput v4, Lc/b/a/b/o/g;->g:I

    .line 8
    invoke-static {}, Lcom/aligenie/ags/analytics/jni/LogProducer;->getInstance()Lcom/aligenie/ags/analytics/jni/LogProducer;

    .line 9
    sget-object v4, Lcom/aligenie/ags/analytics/util/ICNetworkInfo$a;->a:Lcom/aligenie/ags/analytics/util/ICNetworkInfo;

    .line 10
    invoke-virtual {v4, v1}, Lcom/aligenie/ags/analytics/util/ICNetworkInfo;->a(Landroid/content/Context;)V

    new-instance v4, Lc/b/a/b/d;

    invoke-direct {v4}, Lc/b/a/b/d;-><init>()V

    sput-object v4, Lcom/aligenie/ags/analytics/service/ICService;->l:Lc/b/a/b/d;

    sget-object v4, Lcom/aligenie/ags/analytics/service/ICService;->l:Lc/b/a/b/d;

    .line 11
    sput-object v4, Lc/b/a/b/o/g;->P:Lc/b/a/b/d;

    .line 12
    invoke-static {p0}, Lcom/aligenie/ags/analytics/service/ICJobService;->a(Landroid/content/Context;)V

    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/aligenie/ags/analytics/AliicxService;

    invoke-direct {v4, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/aligenie/ags/analytics/service/ICService;->a()V

    invoke-virtual {p0}, Lcom/aligenie/ags/analytics/service/ICService;->b()V

    new-instance v1, Lcom/aligenie/ags/analytics/service/ICService$e;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/aligenie/ags/analytics/service/ICService$e;-><init>(Lcom/aligenie/ags/analytics/service/ICService;Lcom/aligenie/ags/analytics/service/ICService$a;)V

    iput-object v1, p0, Lcom/aligenie/ags/analytics/service/ICService;->c:Lcom/aligenie/ags/analytics/service/ICService$e;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "GenieICHandler"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService;->e:Landroid/os/Handler;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService;->d:Landroid/os/Handler;

    const-class v1, Lcom/aligenie/ags/analytics/AliicxService;

    const-string v4, "IC Service onCreate."

    invoke-static {v4, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/aligenie/ags/analytics/service/ICService;->b:Landroid/content/Context;

    :try_start_1
    sget-object v1, Lcom/aligenie/ags/analytics/service/ICService;->m:Landroid/net/Uri;

    iget-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService;->h:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/aligenie/ags/analytics/service/ICService;->f:Landroid/net/Uri;

    iget-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService;->i:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/aligenie/ags/analytics/service/ICService;->g:Landroid/net/Uri;

    iget-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService;->j:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/aligenie/ags/analytics/service/ICService;->k:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "not a valid ContentProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lc/b/a/b/o/g;->d()I

    move-result v0

    sput v0, Lc/b/a/b/o/g;->e:I

    invoke-static {}, Lc/b/a/b/o/g;->b()I

    move-result v0

    sput v0, Lc/b/a/b/o/g;->c:I

    invoke-static {}, Lc/b/a/b/o/g;->c()I

    move-result v0

    sput v0, Lc/b/a/b/o/g;->d:I

    invoke-static {}, Lc/b/a/b/o/g;->a()I

    move-result v0

    sput v0, Lc/b/a/b/o/g;->f:I

    iget-object v0, p0, Lcom/aligenie/ags/analytics/service/ICService;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aligenie/ags/analytics/service/ICService;->c:Lcom/aligenie/ags/analytics/service/ICService$e;

    iget-object v2, p0, Lcom/aligenie/ags/analytics/service/ICService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x1

    if-eqz p1, :cond_f

    const-string p3, "IC Service onStartCommand. action : "

    invoke-static {p3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/aligenie/ags/analytics/AliicxService;

    invoke-static {p3, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "IC"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cmd"

    const/4 v2, 0x0

    const-string v3, "\'"

    const-string v4, "\""

    if-eqz p3, :cond_6

    const-string v5, "cmd="

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    goto/16 :goto_3

    .line 1
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, ";"

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p3, "splitCMC: "

    invoke-static {p3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    array-length v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length p3, p1

    :goto_0
    if-ge v2, p3, :cond_f

    aget-object v1, p1, v2

    invoke-static {v1}, Lc/b/a/b/o/d;->a(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_f

    const-string v5, "debug="

    .line 2
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    const-string p3, "debug"

    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_b

    goto :goto_3

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lc/b/a/b/o/d;->a(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    const-wide/16 v3, 0x0

    :cond_c
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    :cond_d
    const-wide/32 v5, 0x186a0

    cmp-long v5, v3, v5

    if-lez v5, :cond_c

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    const-string v2, "event_type"

    const-string v3, "event_name"

    invoke-static {v2, p3, v3, v1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object p3

    invoke-virtual {p3, v1, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p3, v0, p1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-static {p3}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    :cond_f
    :goto_3
    return p2
.end method
