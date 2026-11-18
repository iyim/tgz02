.class public Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"


# static fields
.field public static final MTOP_DEBUG_APPKEY:Ljava/lang/String; = "4272"

.field public static final MTOP_ONLINE_APPKEY:Ljava/lang/String; = "26062527"

.field public static final MTOP_TTID:Ljava/lang/String; = "genie@launcher"

.field private static final TAG:Ljava/lang/String; = "ApplicationUtils"

.field private static volatile mApplication:Landroid/app/Application;

.field private static mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->mMainHandler:Landroid/os/Handler;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0

    .line 19
    sput-object p0, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->mApplication:Landroid/app/Application;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
