.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;
.super Ljava/lang/Object;
.source "SelectListData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectContextV1"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSelecetItem(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJson()Lorg/json/JSONArray;
    .locals 3

    .line 51
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
