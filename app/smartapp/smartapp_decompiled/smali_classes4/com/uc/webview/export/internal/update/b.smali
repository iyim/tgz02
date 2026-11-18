.class public final Lcom/uc/webview/export/internal/update/b;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/update/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/update/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 324
    sput-object v0, Lcom/uc/webview/export/internal/update/b;->b:Ljava/lang/reflect/Method;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()Lcom/uc/webview/export/cyclone/update/UpdateService;
    .locals 4

    .line 314
    invoke-static {}, Lcom/uc/webview/export/internal/update/b;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 317
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/cyclone/update/UpdateService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UpdateUtils"

    const-string v3, "createService failed"

    .line 319
    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static final a(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "ucPlayerRoot"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "ucplayer"

    .line 43
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "UpdateUtils"

    if-nez v0, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ignore updateUCPlayer in process "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/update/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "want to updateUCPlayer again - "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/update/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/internal/update/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 57
    new-instance v6, Lcom/uc/webview/export/internal/update/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/internal/update/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1304
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ValueCallback;

    if-eqz p0, :cond_0

    .line 1307
    :try_start_0
    invoke-interface {p0, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catch_0
    move-exception p0

    const-string p1, "UpdateUtils"

    const-string p2, "callback failed"

    .line 1309
    invoke-static {p1, p2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static final b(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    const-string v0, "updates"

    .line 48
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 4

    const-string v0, "create"

    .line 326
    sget-object v1, Lcom/uc/webview/export/internal/update/b;->b:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "com.uc.webview.export.cyclone.update.UpdateServiceImpl"

    .line 330
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 332
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/uc/webview/export/internal/update/b;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/update/b;->b:Ljava/lang/reflect/Method;

    .line 336
    :goto_0
    sget-object v0, Lcom/uc/webview/export/internal/update/b;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "UpdateUtils"

    const-string v1, "UpdateService disabled"

    .line 338
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_1
    sget-object v0, Lcom/uc/webview/export/internal/update/b;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    const-wide/16 v0, 0x400

    .line 1177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    const-wide/16 v0, 0x800

    .line 1178
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    const-wide/16 v0, 0x1000

    .line 1179
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    const-wide/16 v0, 0x2000

    .line 1180
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    const-wide/16 v0, 0x4000

    .line 1181
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    const-wide/32 v0, 0x8000

    .line 1182
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    const-wide/32 v0, 0x10000

    .line 1183
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 1184
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    const-string v1, "sdk_ecur1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    const-string v1, "sdk_ecdl1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    const-string v1, "sdk_ecv1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->p:Ljava/util/Map;

    const-string v1, "sdk_ecuz1"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-static {}, Lcom/uc/webview/export/internal/update/b;->a()Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1192
    new-instance v6, Lcom/uc/webview/export/internal/update/g;

    invoke-direct {v6}, Lcom/uc/webview/export/internal/update/g;-><init>()V

    .line 1204
    invoke-static {p0}, Lcom/uc/webview/export/internal/update/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1206
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx"

    invoke-interface {v0, v2, v1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v0

    const-string v1, "url"

    .line 1207
    invoke-interface {v0, v1, p1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p1

    const-string v0, "rootdir"

    .line 1208
    invoke-interface {p1, v0, v5}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p1

    const-string v0, "checkfile"

    const-string v1, "libu3player.so"

    .line 1209
    invoke-interface {p1, v0, v1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p1

    .line 1210
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "exact_mod"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "checklm"

    invoke-interface {p1, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p1

    .line 1211
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "connto"

    invoke-interface {p1, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p1

    .line 1212
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "readto"

    invoke-interface {p1, v1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p1

    new-instance v0, Lcom/uc/webview/export/internal/update/h;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/uc/webview/export/internal/update/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/io/File;Landroid/webkit/ValueCallback;)V

    .line 1213
    invoke-interface {p1, v0}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setCallback(Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object p0

    .line 1298
    invoke-interface {p0}, Lcom/uc/webview/export/cyclone/update/UpdateService;->start()V

    return-void

    .line 1190
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No UpdateService"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doUpdateUCCore url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateUtils"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;)V

    .line 1137
    new-instance v1, Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bw;-><init>()V

    .line 1138
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "CONTEXT"

    invoke-virtual {v1, v2, p0}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    .line 1139
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const/4 v2, 0x0

    const-string v3, "ucmZipDir"

    .line 1140
    invoke-virtual {p0, v3, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "ucmZipFile"

    .line 1141
    invoke-virtual {p0, v3, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const/4 v2, 0x1

    .line 1142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "sdk_setup"

    invoke-virtual {p0, v3, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "chkMultiCore"

    .line 1143
    invoke-virtual {p0, v3, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v2, Lcom/uc/webview/export/internal/update/f;

    invoke-direct {v2, p3}, Lcom/uc/webview/export/internal/update/f;-><init>(Ljava/util/Map;)V

    const-string v3, "downloadException"

    .line 1144
    invoke-virtual {p0, v3, v2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v2, Lcom/uc/webview/export/internal/update/e;

    invoke-direct {v2, p3}, Lcom/uc/webview/export/internal/update/e;-><init>(Ljava/util/Map;)V

    const-string p3, "updateProgress"

    .line 1150
    invoke-virtual {p0, p3, v2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    if-eqz p2, :cond_0

    const-string p0, "dlChecker"

    .line 1158
    invoke-virtual {v1, p0, p2}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1160
    :cond_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ucmUpdUrl"

    .line 1161
    invoke-virtual {v1, p0, p1}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    :cond_1
    if-eqz p4, :cond_2

    .line 1163
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1164
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1165
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/uc/webview/export/internal/setup/bw;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0x7d0

    .line 1168
    invoke-virtual {v1, p0, p1}, Lcom/uc/webview/export/internal/setup/bw;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 1169
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method
