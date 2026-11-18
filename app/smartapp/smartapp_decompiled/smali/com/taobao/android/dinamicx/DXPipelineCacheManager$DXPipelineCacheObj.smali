.class public Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;
.super Ljava/lang/Object;
.source "DXPipelineCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/DXPipelineCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DXPipelineCacheObj"
.end annotation


# instance fields
.field public cacheWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field public error:Lcom/taobao/android/dinamicx/DXError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public hasError()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->error:Lcom/taobao/android/dinamicx/DXError;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXPipelineCacheManager$DXPipelineCacheObj;->error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
