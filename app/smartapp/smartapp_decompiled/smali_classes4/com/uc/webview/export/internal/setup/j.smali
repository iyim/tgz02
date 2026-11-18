.class public final Lcom/uc/webview/export/internal/setup/j;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/j$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 3

    .line 90
    sget-object v0, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    monitor-exit v0

    return-object p0

    :cond_0
    const/16 v1, 0xe7

    .line 94
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 96
    sget-boolean v1, Lcom/uc/webview/export/internal/setup/af;->e:Z

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/uc/webview/export/internal/uc/CoreFactory;->initUCMobileWebKit(Landroid/content/Context;ZZ)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object p0

    .line 100
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 102
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->a(Lcom/uc/webview/export/internal/interfaces/InvokeObject;)V

    const/16 p0, 0xe8

    .line 104
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 107
    sget-object p0, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    return-object p0

    :catchall_0
    move-exception p0

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a()V
    .locals 7

    .line 38
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 40
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 42
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 45
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 v0, 0x137

    .line 43
    invoke-static {v0, v2, v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 52
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    sget v1, Lcom/uc/webview/export/internal/setup/ae$d;->a:I

    sget-object v2, Lcom/uc/webview/export/internal/setup/ae$b;->j:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v3, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 55
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/uc/webview/export/internal/setup/k;

    invoke-direct {v5}, Lcom/uc/webview/export/internal/setup/k;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 52
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/uc/webview/export/internal/setup/ae;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/ae$c;

    return-void
.end method

.method public static a(Ljava/lang/Boolean;)Z
    .locals 3

    if-nez p0, :cond_2

    .line 83
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 84
    invoke-static {}, Lcom/uc/webview/export/utility/Utils;->checkSupportSamplerExternalOES()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 86
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 72
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCoreType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    invoke-static {v2}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    .line 77
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/16 v0, 0x134

    .line 75
    invoke-static {v0, v2, v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 114
    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    new-instance v1, Lcom/uc/webview/export/internal/setup/j$a;

    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/uc/webview/export/internal/setup/j$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d()V
    .locals 7

    const-string v0, "InitUtil"

    const-string v1, "initVideoSetting begin"

    .line 121
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    .line 124
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/af;->b:Z

    if-eqz v2, :cond_5

    const/16 v2, 0xeb

    .line 125
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 127
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 1157
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->e()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    .line 1160
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->e()I

    move-result v3

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-eqz v5, :cond_1

    const-string v2, "UC Core not support Hardware accelerated."

    .line 1163
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1168
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const-string v4, "video_hardward_accelerate"

    if-ge v2, v3, :cond_3

    if-eqz v5, :cond_2

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Hardware accelerated is supported start at api level 14 and now is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1175
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    if-eqz v5, :cond_4

    const-wide/32 v2, 0x100000

    .line 1177
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 128
    :cond_4
    :goto_1
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->j()V

    .line 135
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/util/Map;)V

    .line 136
    invoke-static {v1}, Lcom/uc/webview/export/internal/update/a;->a(Landroid/content/Context;)V

    .line 138
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->o()V

    .line 139
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->k()V

    const/16 v1, 0xec

    .line 140
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    :cond_5
    const-string v1, "initVideoSetting end"

    .line 143
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e()I
    .locals 2

    .line 147
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "VIDEO_AC"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
