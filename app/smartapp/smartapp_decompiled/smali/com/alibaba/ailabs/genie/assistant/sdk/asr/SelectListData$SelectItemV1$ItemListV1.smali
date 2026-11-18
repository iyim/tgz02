.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;
.super Ljava/lang/Object;
.source "SelectListData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemListV1"
.end annotation


# instance fields
.field public norm_value:Ljava/lang/String;

.field private value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;->value:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSlot(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;->value:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;->value:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    :try_start_0
    const-string v2, "norm_value"

    .line 73
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1$ItemListV1;->norm_value:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "value"

    .line 74
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
