.class Lcom/taobao/android/service/LocalAidlServices;
.super Ljava/lang/Object;
.source "LocalAidlServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
    }
.end annotation


# static fields
.field private static final Service_attach:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "LocalSvc"

.field private static final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Incompatible ROM"

    const-string v1, "LocalSvc"

    .line 213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/taobao/android/service/LocalAidlServices;->mServices:Ljava/util/Map;

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/taobao/android/service/LocalAidlServices;->mConnectionMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.app.ActivityThread"

    .line 223
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 224
    const-class v4, Landroid/app/Service;

    const-string v5, "attach"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v3

    const/4 v3, 0x3

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v3

    const/4 v3, 0x4

    const-class v8, Landroid/app/Application;

    aput-object v8, v6, v3

    const/4 v3, 0x5

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 226
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 230
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 228
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :goto_0
    sput-object v2, Lcom/taobao/android/service/LocalAidlServices;->Service_attach:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static attach(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Service;Landroid/app/Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;",
            "Landroid/app/Service;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/taobao/android/service/LocalAidlServices;->Service_attach:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 195
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p0

    const/4 p0, 0x2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x3

    aput-object v2, v1, p0

    const/4 p0, 0x4

    aput-object p3, v1, p0

    const/4 p0, 0x5

    aput-object v2, v1, p0

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    const-string p1, "LocalSvc"

    const-string p2, "Unexpected exception when attaching service."

    .line 197
    invoke-static {p1, p2, p0}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, ".onServiceConnected()"

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 48
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 51
    :cond_1
    sget-object v3, Lcom/taobao/android/service/LocalAidlServices;->mServices:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    if-nez v3, :cond_3

    .line 53
    invoke-static {p0, p1, v1}, Lcom/taobao/android/service/LocalAidlServices;->createAndBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    .line 55
    :cond_2
    sget-object p0, Lcom/taobao/android/service/LocalAidlServices;->mServices:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_3
    invoke-virtual {v3, p2}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object p0, Lcom/taobao/android/service/LocalAidlServices;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide p0

    .line 62
    iget-object v2, v3, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->binder:Landroid/os/IBinder;

    invoke-interface {p2, v1, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const-wide/32 v1, 0x1e8480

    add-long/2addr p0, v1

    .line 63
    invoke-static {p0, p1, p2, v0}, Lcom/taobao/android/service/LocalAidlServices;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalSvc"

    invoke-static {p2, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static checkConnectionExist(Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 72
    sget-object v0, Lcom/taobao/android/service/LocalAidlServices;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static createAndBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, ".onDestroy()"

    const-string v1, ".onBind()"

    const-string v2, ".onCreate()"

    const-string v3, "LocalSvc"

    .line 79
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/taobao/android/service/LocalAidlServices;->loadServiceClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 82
    :cond_0
    const-class v6, Lcom/taobao/android/service/AidlService;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v5

    .line 86
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 87
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Service;

    const-wide/32 v9, 0x1e8480

    add-long/2addr v6, v9

    .line 88
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "()"

    invoke-static {v6, v7, v11, v12}, Lcom/taobao/android/service/LocalAidlServices;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 96
    invoke-static {p0}, Lcom/taobao/android/service/LocalAidlServices;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p2

    .line 98
    invoke-static {p0, v4, v8, p2}, Lcom/taobao/android/service/LocalAidlServices;->attach(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Service;Landroid/app/Application;)V

    const-wide/32 v6, 0x4c4b40

    .line 100
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v11

    .line 101
    invoke-virtual {v8}, Landroid/app/Service;->onCreate()V

    add-long/2addr v11, v6

    .line 102
    invoke-static {v11, v12, v8, v2}, Lcom/taobao/android/service/LocalAidlServices;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v11

    .line 110
    invoke-virtual {v8, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    add-long/2addr v11, v9

    .line 111
    :try_start_3
    invoke-static {v11, v12, v8, v1}, Lcom/taobao/android/service/LocalAidlServices;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_2

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onBind() should never return null."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p0, v5

    .line 114
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    if-nez p0, :cond_3

    .line 118
    :try_start_4
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide p0

    .line 119
    invoke-virtual {v8}, Landroid/app/Service;->onDestroy()V

    add-long/2addr p0, v6

    .line 120
    invoke-static {p0, p1, v8, v0}, Lcom/taobao/android/service/LocalAidlServices;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v5

    .line 127
    :cond_3
    invoke-static {p2, v8}, Lcom/taobao/android/service/LocalAidlServices;->registerComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V

    .line 129
    new-instance v0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    invoke-direct {v0, p2, p1, p0, v8}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;-><init>(Landroid/app/Application;Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/Service;)V

    return-object v0

    :catch_4
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Constructor of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is inaccessible"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5

    :catch_5
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to instantiate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private static getApplication(Landroid/content/Context;)Landroid/app/Application;
    .locals 2

    .line 204
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    nop

    nop

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_2

    nop

    nop

    return-object v0

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot discover application from context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocalSvc"

    invoke-static {v0, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static isServiceLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/taobao/android/service/LocalAidlServices;->mServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    if-eqz p0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static loadServiceClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 182
    :try_start_0
    invoke-static {}, Lcom/taobao/android/service/Services;->getSystemClassloader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/android/service/Services;->getSystemClassloader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object p0

    .line 186
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not a Service derived class: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalSvc"

    invoke-static {p1, p0}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 133
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exceed the deadline "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms (thread CPU time)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalSvc"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static registerComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public static unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 5

    .line 139
    sget-object v0, Lcom/taobao/android/service/LocalAidlServices;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    sget-object v2, Lcom/taobao/android/service/LocalAidlServices;->mServices:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    if-nez v2, :cond_1

    return v1

    .line 143
    :cond_1
    invoke-virtual {v2, p1}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->remove(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "LocalSvc"

    if-nez v1, :cond_2

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal inconsistency, please report this to the corresponding dev team: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/modular/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v4, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".onServiceDisconnected()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    :goto_0
    invoke-virtual {v2}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 152
    sget-object p0, Lcom/taobao/android/service/LocalAidlServices;->mServices:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p0, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->app:Landroid/app/Application;

    iget-object p1, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-static {p0, p1}, Lcom/taobao/android/service/LocalAidlServices;->unregisterComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V

    .line 155
    :try_start_1
    iget-object p0, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    iget-object p1, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".onUnbind()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :goto_1
    :try_start_2
    iget-object p0, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".onDestroy()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lcom/taobao/android/modular/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private static unregisterComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-eqz p0, :cond_1

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method
