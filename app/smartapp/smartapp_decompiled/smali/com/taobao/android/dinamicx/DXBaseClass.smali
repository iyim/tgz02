.class public Lcom/taobao/android/dinamicx/DXBaseClass;
.super Ljava/lang/Object;
.source "DXBaseClass.java"


# instance fields
.field protected bizType:Ljava/lang/String;

.field protected config:Lcom/taobao/android/dinamicx/DXEngineConfig;

.field protected engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;


# direct methods
.method protected constructor <init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/taobao/android/dinamicx/DXEngineConfig;

    const-string v0, "default_bizType"

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    .line 35
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->bizType:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    .line 38
    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->bizType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/taobao/android/dinamicx/DXEngineConfig;

    const-string v0, "default_bizType"

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    .line 21
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->bizType:Ljava/lang/String;

    .line 22
    new-instance p1, Lcom/taobao/android/dinamicx/DXEngineContext;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXEngineContext;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    .line 23
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    return-void

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    .line 28
    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    .line 29
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->bizType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    return-object v0
.end method

.method public getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXBaseClass;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    return-object v0
.end method
