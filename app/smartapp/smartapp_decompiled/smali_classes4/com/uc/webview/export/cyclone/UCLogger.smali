.class public Lcom/uc/webview/export/cyclone/UCLogger;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# static fields
.field private static final CURRENT_PID:Ljava/lang/Integer;

.field private static final PARAMS_WITHOUT_THROWABLE:[Ljava/lang/Class;

.field private static final PARAMS_WITH_THROWABLE:[Ljava/lang/Class;

.field private static bAllowAllLevel:Z = false

.field private static bAllowAllTag:Z = false

.field private static sAllowLevels:Ljava/lang/String; = "[all]"

.field private static sAllowTags:Ljava/lang/String; = "[all]"

.field private static sAsyncTask:Landroid/os/AsyncTask; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedLoggers:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uc/webview/export/cyclone/UCLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCallbackChannel:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabled:Z = false

.field private static final sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogcatChannel:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mLevel:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Throwable;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITH_THROWABLE:[Ljava/lang/Class;

    .line 29
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITHOUT_THROWABLE:[Ljava/lang/Class;

    .line 31
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->CURRENT_PID:Ljava/lang/Integer;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    .line 45
    sget-object p1, Lcom/uc/webview/export/cyclone/UCCyclone;->logExtraTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->logExtraTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/webkit/ValueCallback;
    .locals 1

    .line 15
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 15
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 15
    sput-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method public static addLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 178
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogItems:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/uc/webview/export/cyclone/UCLogger;->CURRENT_PID:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 179
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const/4 p0, 0x4

    aput-object p1, v1, p0

    const/4 p0, 0x5

    aput-object p2, v1, p0

    const/4 p0, 0x6

    aput-object p3, v1, p0

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;
    .locals 1

    .line 102
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLogger;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/cyclone/UCLogger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;
    .locals 1

    .line 95
    invoke-static {p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->enable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLogger;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 49
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/uc/webview/export/cyclone/UCLogger;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 60
    :try_start_1
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :try_start_2
    sget-object v2, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    invoke-static {p0, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 66
    sget-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    .line 68
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static enable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 88
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllLevel:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    sget-boolean p0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllTag:Z

    if-nez p0, :cond_2

    sget-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private varargs print(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 7

    .line 118
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 120
    array-length v1, p4

    if-lez v1, :cond_1

    aget-object v1, p4, v0

    if-eqz v1, :cond_1

    aget-object p4, p4, v0

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uc/webview/export/cyclone/UCCyclone;->logExtraTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mTag:Ljava/lang/String;

    .line 123
    :goto_1
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 124
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    if-eqz p4, :cond_3

    sget-object v3, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITH_THROWABLE:[Ljava/lang/Class;

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/uc/webview/export/cyclone/UCLogger;->PARAMS_WITHOUT_THROWABLE:[Ljava/lang/Class;

    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p4, :cond_4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v0

    aput-object p3, v6, v4

    aput-object p4, v6, v5

    goto :goto_3

    :cond_4
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p2, v6, v0

    aput-object p3, v6, v4

    :goto_3
    invoke-static {v1, v2, v3, v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    :cond_5
    :goto_4
    :try_start_1
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_6

    .line 135
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/UCLogger;->mLevel:Ljava/lang/String;

    invoke-static {v1, p2, p3, p4}, Lcom/uc/webview/export/cyclone/UCLogger;->addLogItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p1, :cond_6

    .line 137
    sget-object p1, Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;

    if-nez p1, :cond_6

    .line 138
    new-instance p1, Lcom/uc/webview/export/cyclone/UCLogger$1;

    invoke-direct {p1, p0}, Lcom/uc/webview/export/cyclone/UCLogger$1;-><init>(Lcom/uc/webview/export/cyclone/UCLogger;)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 169
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    sput-object p1, Lcom/uc/webview/export/cyclone/UCLogger;->sAsyncTask:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    return-void

    :catch_1
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static varargs print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 76
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 78
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/uc/webview/export/cyclone/UCLogger;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized setup([Ljava/lang/Object;)V
    .locals 8

    const-class v0, Lcom/uc/webview/export/cyclone/UCLogger;

    monitor-enter v0

    const/4 v1, 0x0

    .line 183
    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    .line 184
    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x2

    .line 185
    aget-object v5, p0, v5

    check-cast v5, Landroid/webkit/ValueCallback;

    const/4 v6, 0x3

    .line 186
    aget-object v6, p0, v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    .line 187
    aget-object p0, p0, v7

    check-cast p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    sput-boolean v3, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z

    goto :goto_0

    .line 192
    :cond_0
    sput-boolean v1, Lcom/uc/webview/export/cyclone/UCLogger;->sEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v1, 0x0

    if-eqz v4, :cond_2

    .line 195
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_1
    sput-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;

    goto :goto_1

    .line 198
    :cond_2
    sput-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sLogcatChannel:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 201
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    :goto_1
    sput-object v5, Lcom/uc/webview/export/cyclone/UCLogger;->sCallbackChannel:Landroid/webkit/ValueCallback;

    if-eqz v6, :cond_3

    .line 206
    sput-object v6, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v1, ""

    .line 208
    sput-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    :goto_2
    if-eqz p0, :cond_4

    .line 211
    sput-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string p0, ""

    .line 213
    sput-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    .line 215
    :goto_3
    sget-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowLevels:Ljava/lang/String;

    const-string v1, "[all]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllLevel:Z

    .line 216
    sget-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sAllowTags:Ljava/lang/String;

    const-string v1, "[all]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/uc/webview/export/cyclone/UCLogger;->bAllowAllTag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    :try_start_3
    sget-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    .line 221
    sget-object p0, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    :try_start_4
    sget-object v1, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_4
    if-ltz v1, :cond_8

    .line 223
    sget-object v2, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 224
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v3

    .line 225
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v4, :cond_5

    if-nez v3, :cond_6

    :cond_5
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    .line 226
    :cond_6
    sget-object v4, Lcom/uc/webview/export/cyclone/UCLogger;->sCachedLoggers:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v5, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 229
    :cond_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 233
    :cond_9
    monitor-exit v0

    return-void

    :catch_1
    move-exception p0

    .line 232
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public varargs print(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public varargs print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
