.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;
.super Ljava/lang/Object;
.source "SelectListData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectItemV1;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;
    }
.end annotation


# static fields
.field public static final CONTINUE_MATCH:Ljava/lang/String; = "CONTINUE_MATCH"

.field public static final FULL_MATCH:Ljava/lang/String; = "EDIT_DISTANCE_MATCH"


# instance fields
.field private additionalIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private algo:Ljava/lang/String;

.field private mSelectContextV1:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;

.field private matchNum:I

.field private pageId:Ljava/lang/String;

.field private selectContext:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->algo:Ljava/lang/String;

    const/4 v1, -0x1

    .line 141
    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->matchNum:I

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->selectContext:Ljava/util/HashMap;

    .line 153
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->additionalIntents:Ljava/util/ArrayList;

    return-void
.end method

.method private getSlot(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->selectContext:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->selectContext:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static toJson(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)Lorg/json/JSONObject;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 218
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->selectContext:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 220
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v2, v0

    .line 222
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    .line 226
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 227
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 228
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 230
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 231
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 233
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v6, :cond_2

    .line 237
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 238
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 239
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 240
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    if-eqz v6, :cond_4

    .line 241
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 242
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 243
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 244
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 248
    :cond_4
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 255
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 257
    :cond_6
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    .line 264
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "selectContext"

    if-eqz v2, :cond_9

    .line 267
    :try_start_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :cond_9
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->mSelectContextV1:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;

    if-eqz v2, :cond_a

    .line 271
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "version"

    const/4 v5, 0x1

    .line 272
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "selectList"

    .line 273
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->mSelectContextV1:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;->toJson()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_a
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->algo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 278
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "algo"

    .line 279
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->algo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->matchNum:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    const-string v3, "fullMatchNum"

    .line 281
    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->matchNum:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    const-string v3, "matchControl"

    .line 283
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    :cond_c
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->pageId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "pageId"

    .line 287
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->pageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_d
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->additionalIntents:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->additionalIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 291
    new-instance v2, Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->additionalIntents:Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "additionalIntents"

    .line 292
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return-object v1

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public addSelectData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)V
    .locals 1

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->getSlot(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 176
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addSelectData(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->getSlot(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 189
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;

    if-eqz v0, :cond_1

    .line 191
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSelectContextV1()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->mSelectContextV1:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;

    return-object v0
.end method

.method public setAdditionalIntents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->additionalIntents:Ljava/util/ArrayList;

    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->pageId:Ljava/lang/String;

    return-void
.end method

.method public setSelectContextV1(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->mSelectContextV1:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectContextV1;

    return-void
.end method
