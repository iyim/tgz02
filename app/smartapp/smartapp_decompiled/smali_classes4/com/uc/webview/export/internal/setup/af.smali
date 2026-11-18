.class public Lcom/uc/webview/export/internal/setup/af;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Z = true

.field public static c:Lcom/uc/webview/export/internal/setup/br;

.field public static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Z

.field private static f:Ljava/lang/ClassLoader;

.field private static g:I

.field private static h:I

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 52
    const-class v0, Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->f:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 53
    sput v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    .line 54
    sput v0, Lcom/uc/webview/export/internal/setup/af;->h:I

    .line 55
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/setup/af;->k:Ljava/util/HashSet;

    .line 256
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/webview/export/internal/setup/af;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 270
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()I
    .locals 1

    .line 104
    sget v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 4

    const/16 v0, 0x214

    .line 238
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 239
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 241
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/uc/webview/export/internal/setup/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/m;->run()V

    .line 4056
    iget-object p0, v1, Lcom/uc/webview/export/internal/setup/m;->c:Ljava/lang/ClassLoader;

    .line 248
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/ClassLoader;)V

    .line 250
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x215

    .line 251
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 252
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 100
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 3

    .line 201
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->k:Ljava/util/HashSet;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->k:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 203
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->k:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doCoreStatusStat status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupController"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/uc/webview/export/internal/setup/ag;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ag;-><init>(I)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 204
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .locals 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReveiveSetupStatus status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupController"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sput p0, Lcom/uc/webview/export/internal/setup/af;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 139
    :pswitch_1
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->b()V

    return-void

    .line 132
    :pswitch_2
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->a()V

    .line 133
    aget-object p0, p1, v0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->a(Landroid/content/Context;)V

    return-void

    .line 190
    :pswitch_3
    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/af;->a(I)V

    .line 191
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->g()V

    :goto_0
    return-void

    :pswitch_4
    const/4 p0, 0x4

    .line 184
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(I)V

    .line 185
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->g()V

    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    .line 166
    sget-object p0, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p0, 0x232b

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object p0, Lcom/uc/webview/export/internal/setup/af;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p0

    .line 171
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2332

    .line 172
    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/16 p0, 0x2a

    .line 176
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 177
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/af;->a(I)V

    .line 178
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->g()V

    :cond_3
    return-void

    .line 145
    :cond_4
    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/ClassLoader;

    if-eqz p0, :cond_5

    .line 147
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/ClassLoader;)V

    .line 149
    :cond_5
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    monitor-enter v0

    .line 273
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->g()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 274
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/ClassLoader;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "SetupController"

    const-string v0, "setClassLoader failed, maybe load jar failed."

    .line 219
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 222
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 223
    :try_start_0
    sput-object p0, Lcom/uc/webview/export/internal/setup/af;->f:Ljava/lang/ClassLoader;

    .line 226
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 227
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 65
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 1100
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "CONTEXT"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Landroid/content/Context;

    sput-object v2, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    .line 2100
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "sdk_setup"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/uc/webview/export/internal/setup/af;->b:Z

    const-string v2, "AC"

    .line 71
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/j;->a(Ljava/lang/Boolean;)Z

    move-result p0

    sput-boolean p0, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 3100
    sget-object p0, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "startup_policy"

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/uc/webview/export/internal/setup/af;->g:I

    :cond_0
    const/16 p0, 0xf

    .line 77
    sget v2, Lcom/uc/webview/export/internal/setup/af;->g:I

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    const/16 p0, 0x136

    .line 92
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 90
    invoke-static {p0, v2, v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initSdkSetup sSetupPolicy:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sUseSdkSetup:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->b:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sIsHardwareAccleration:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->e:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SetupController"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 3

    .line 112
    sget v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit16 v0, v0, 0x80

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public static c()I
    .locals 1

    .line 117
    sget v0, Lcom/uc/webview/export/internal/setup/af;->h:I

    return v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    sput v0, Lcom/uc/webview/export/internal/setup/af;->h:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e()Ljava/lang/ClassLoader;
    .locals 2

    .line 231
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->f:Ljava/lang/ClassLoader;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f()V
    .locals 3

    .line 260
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 261
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2332

    const/4 v2, 0x0

    .line 262
    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static g()V
    .locals 4

    .line 279
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 283
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v2, :cond_1

    .line 284
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 285
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 289
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 293
    :cond_1
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/ValueCallback;

    invoke-interface {v3, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_2
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 295
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
