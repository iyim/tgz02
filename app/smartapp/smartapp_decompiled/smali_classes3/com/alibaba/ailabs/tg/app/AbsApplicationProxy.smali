.class public abstract Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;
.super Ljava/lang/Object;
.source "AbsApplicationProxy.java"


# instance fields
.field private mApplication:Lcom/alibaba/ailabs/tg/app/AbsApplication;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/tg/app/AbsApplication;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->mApplication:Lcom/alibaba/ailabs/tg/app/AbsApplication;

    return-void
.end method

.method private initAppPlugs()V
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->getAppPlugs()[Lcom/alibaba/ailabs/tg/app/IAppPlug;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 45
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->getApplication()Lcom/alibaba/ailabs/tg/app/AbsApplication;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/ailabs/tg/app/IAppPlug;->plugin(Lcom/alibaba/ailabs/tg/app/AbsApplication;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getAppPlugs()[Lcom/alibaba/ailabs/tg/app/IAppPlug;
.end method

.method public getApplication()Lcom/alibaba/ailabs/tg/app/AbsApplication;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->mApplication:Lcom/alibaba/ailabs/tg/app/AbsApplication;

    return-object v0
.end method

.method public abstract getProcessFlag()I
.end method

.method public abstract isMainProcess()Z
.end method

.method public onCreate()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/app/AbsApplicationProxy;->initAppPlugs()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onTerminate()V
.end method

.method public abstract onTrimMemory(I)V
.end method
