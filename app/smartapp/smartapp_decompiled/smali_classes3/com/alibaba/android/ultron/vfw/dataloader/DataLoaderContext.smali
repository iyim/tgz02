.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;
.super Ljava/lang/Object;
.source "DataLoaderContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;
    }
.end annotation


# static fields
.field public static final OP_TYPE_ADJUST:Ljava/lang/String; = "adjust"

.field public static final OP_TYPE_INIT:Ljava/lang/String; = "initial"


# instance fields
.field extraDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

.field mOpType:Ljava/lang/String;

.field processor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

.field rootKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->extraDataMap:Ljava/util/Map;

    return-void
.end method

.method public static createContext(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;-><init>()V

    .line 33
    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mOpType:Ljava/lang/String;

    .line 34
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    return-object v0
.end method

.method public static createContext(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;-><init>()V

    .line 40
    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mOpType:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    if-eqz p2, :cond_0

    .line 43
    iget-object p0, p2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->rootKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->rootKey:Ljava/lang/String;

    .line 44
    iget-object p0, p2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->processor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    iput-object p0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->processor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addExtraData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->extraDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getData()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    return-object v0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->extraDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOpType()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mOpType:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessor()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->processor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    return-object v0
.end method

.method public getRootKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->rootKey:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    return-void
.end method

.method public setProcessor(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->processor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    return-void
.end method

.method public setRootKey(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->rootKey:Ljava/lang/String;

    return-void
.end method
