.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;
.super Ljava/lang/Object;
.source "DataLoaderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public extInput:Lcom/alibaba/fastjson/JSONObject;

.field public initialState:Lcom/alibaba/fastjson/JSONObject;

.field public opState:Lcom/alibaba/fastjson/JSONObject;

.field public storeState:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public setStoreStateFromData(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    .line 117
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "initialState"

    .line 118
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "extInput"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
