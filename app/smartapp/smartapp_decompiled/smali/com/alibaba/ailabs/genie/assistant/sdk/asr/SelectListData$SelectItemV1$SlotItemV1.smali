.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$SlotItemV1;
.super Ljava/lang/Object;
.source "SelectListData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlotItemV1"
.end annotation


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$SlotItemV1;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$SlotItemV1;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$SlotItemV1;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$SlotItemV1;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "name"

    .line 97
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$SlotItemV1;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "itemList"

    .line 98
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method
