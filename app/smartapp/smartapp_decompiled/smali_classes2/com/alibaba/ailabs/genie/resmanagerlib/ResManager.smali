.class public Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;
.super Ljava/lang/Object;
.source "ResManager.java"


# static fields
.field public static final DEVICE_CAMERA_0:I = 0x0

.field public static final DEVICE_CAMERA_1:I = 0x1

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_MEDIUM:I = 0x1

.field public static final PROXY_PRI:I = 0x0

.field public static final PROXY_TIME:I = 0x1

.field private static final RESMANAGER_SERVICE:Ljava/lang/String; = "alibaba.ailabs.genie.resm"

.field private static final TAG:Ljava/lang/String; = "system_resource"

.field private static mAppPackageName:Ljava/lang/String; = "null"

.field private static volatile sResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;


# instance fields
.field private final mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Lcom/alibaba/ailabs/genie/resmanager/IResManager;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;
    .locals 3

    .line 47
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->sResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    sget-object v1, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->sResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    if-nez v1, :cond_0

    const-string v1, "system_resource"

    const-string v2, "first time init get form system service."

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "alibaba.ailabs.genie.resm"

    .line 51
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/resmanager/IResManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    invoke-direct {v2, v1}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;-><init>(Lcom/alibaba/ailabs/genie/resmanager/IResManager;)V

    sput-object v2, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->sResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mAppPackageName:Ljava/lang/String;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "system_resource"

    const-string v0, "Exception in getinstance"

    .line 59
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->sResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    return-object p0
.end method

.method private static getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    .line 153
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public registerListener(Lcom/alibaba/ailabs/genie/resmanager/IResListener;)Z
    .locals 4

    const-string v0, "system_resource"

    const-string v1, "registerListener"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Failed, not find resm service."

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    invoke-interface {v3, v1, p1}, Lcom/alibaba/ailabs/genie/resmanager/IResManager;->registerListener(ILcom/alibaba/ailabs/genie/resmanager/IResListener;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Exception register listener"

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public releaseResource(I)Z
    .locals 5

    const-string v0, "system_resource"

    const-string v1, "releaseResource"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Failed, not find resm service."

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    sget-object v4, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mAppPackageName:Ljava/lang/String;

    invoke-interface {v3, p1, v1, v4}, Lcom/alibaba/ailabs/genie/resmanager/IResManager;->releaseResource(IILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Exception releaseResource"

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public requestResource(II)Ljava/lang/String;
    .locals 4

    const-string v0, "system_resource"

    const-string v1, "requestResource"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    if-nez v1, :cond_0

    const-string p1, "Failed, not find resm service."

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    sget-object v3, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mAppPackageName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v1, v3}, Lcom/alibaba/ailabs/genie/resmanager/IResManager;->requireResource(IIILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Exception requireResource"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    sget-object p1, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mAppPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public requestResourceSync(III)Z
    .locals 3

    const-string p3, "system_resource"

    const-string v0, "requestResource sync"

    .line 84
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    if-nez v0, :cond_0

    const-string p1, "Failed, not find resm service."

    .line 86
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    sget-object v2, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mAppPackageName:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/alibaba/ailabs/genie/resmanager/IResManager;->requireResource(IIILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Exception requestResourcesync"

    .line 97
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterListener(Lcom/alibaba/ailabs/genie/resmanager/IResListener;)Z
    .locals 4

    const-string v0, "system_resource"

    const-string v1, "unregisterListener"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "Failed, not find resm service."

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->mService:Lcom/alibaba/ailabs/genie/resmanager/IResManager;

    invoke-interface {v3, v1, p1}, Lcom/alibaba/ailabs/genie/resmanager/IResManager;->unregisterListener(ILcom/alibaba/ailabs/genie/resmanager/IResListener;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Exception unregister listener"

    .line 144
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
