.class public abstract Lcom/alibaba/ailabs/tg/app/AbsApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "AbsApplication.java"


# static fields
.field public static final FLAG_PROCESS_UNKNOWN:I

.field private static mAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;

.field private static mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

.field private static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sDefaultAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/alibaba/ailabs/tg/app/AbsApplication$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/tg/app/AbsApplication$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->sDefaultAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 96
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppInfo()Lcom/alibaba/ailabs/tg/app/IAppInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 92
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;

    return-object v0
.end method

.method public static getProcessFlag()I
    .locals 1

    .line 80
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->getProcessFlag()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 100
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/app/IAppInfo;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMainProcess()Z
    .locals 1

    .line 87
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 26
    sput-object p1, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->setAppContext(Landroid/content/Context;)V

    return-void
.end method

.method protected createAppInfo()Lcom/alibaba/ailabs/tg/app/IAppInfo;
    .locals 1

    .line 72
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->sDefaultAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;

    return-object v0
.end method

.method protected createApplicationProxy()Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initAppInfo(Lcom/alibaba/ailabs/tg/app/IAppInfo;)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/tg/app/IAppInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    sput-object p1, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mAppInfo:Lcom/alibaba/ailabs/tg/app/IAppInfo;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreate()V
    .locals 1

    .line 32
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 33
    sput-object p0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/app/AbsApplication;->createAppInfo()Lcom/alibaba/ailabs/tg/app/IAppInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/tg/app/AbsApplication;->initAppInfo(Lcom/alibaba/ailabs/tg/app/IAppInfo;)V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/app/AbsApplication;->createApplicationProxy()Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->onCreate()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onLowMemory()V

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->onTerminate()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onTrimMemory(I)V

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/tg/app/AbsApplication;->mApplicationProxy:Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->onTrimMemory(I)V

    :cond_0
    return-void
.end method
